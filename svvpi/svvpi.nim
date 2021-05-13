import std/[os, macros, strutils]
import nimterop/cimport

when defined(svGenWrapper):
  static:
    cDisableCaching()
    cDebug()

const
  # includePath = getEnv("XCELIUM_ROOT") / ".." / "include"
  sourceDir = currentSourcePath.parentDir()
  includePath = sourceDir / "includes"
static:
  doAssert fileExists(includePath / "sv_vpi_user.h")
  doAssert fileExists(includePath / "vpi_user.h")
  doAssert fileExists(includePath / "vpi_compatibility.h")
  # Put cAddSearchDir in static block: https://github.com/nimterop/nimterop/issues/122
  cAddSearchDir(includePath)

cPlugin:
  proc onSymbol*(sym: var Symbol) {.exportc, dynlib.} =
    case sym.name
    # For Nim, the VpiHandle and vpi_handle identifiers are identical.
    # But the vpi_user.h has VpiHandle for type name and vpi_handle for a function
    # name. Below maps the VpiHandle type to VpiHandle in Nim to distinguish the
    # type from vpi_handle.
    of "vpiHandle": sym.name = "VpiHandle"
    # If below substition is not done, nimterop does not infer "PLI_BYTE8 *" type as
    # cstring.
    of "PLI_BYTE8":  sym.name = "cchar"
    # Replacing other similar types just for consistency.
    of "PLI_UBYTE8":  sym.name = "cuchar"
    of "PLI_INT16": sym.name = "cshort"
    of "PLI_UINT16":  sym.name = "cushort"
    of "PLI_INT32": sym.name = "cint"
    of "PLI_UINT32": sym.name = "cuint"
    of "PLI_INT64": sym.name = "clonglong"
    of "PLI_UINT64": sym.name = "culonglong"
    else: discard

cDefine("VPI_COMPATIBILITY_VERSION_1800v2009")

cOverride:
  const
    vpiSysFuncType* = vpiFuncType
    vpiSysFuncReal* = vpiRealFunc
    vpiSysFuncTime* = vpiTimeFunc
    vpiSysFuncSized* = vpiSizedFunc
    vpiArrayVar* = vpiRegArray
    vpiArrayNet* = vpiNetArray
    vpiInterfaceDecl* = vpiVirtualInterfaceVar

cImport(cSearchPath("sv_vpi_user.h"), recurse = true, flags = "-f:ast2")
cImport(cSearchPath("veriuser.h"), recurse = true, flags = "-f:ast2") # Mainly for tf_dofinish

proc vpiQuit*(finishArg = 1) =
  # FIXME: -- Mon May 10 02:17:38 EDT 2021 - kmodi
  # vpi_control doesn't seem to work
  # discard vpi_control(vpiFinish, finishArg)
  discard tf_dofinish()

# 1800-2009 compatibility
proc vpi_compare_objects*(object1: VpiHandle; object2: VpiHandle): cint =
  return vpi_compare_objects_1800v2009(object1, object2)

proc vpi_control*(operation: cint): cint {.importc: "vpi_control_1800v2009", cdecl,
                                           impsv_vpi_userHdr, varargs.}

proc vpi_get*(property: cint; obj: VpiHandle): cint =
  return vpi_get_1800v2009(property, obj)

proc vpi_get_str*(property: cint; obj: VpiHandle): cstring =
  return vpi_get_str_1800v2009(property, obj)

proc vpi_get_value*(expr: VpiHandle; value_p: p_vpi_value) =
  vpi_get_value_1800v2009(expr, value_p)

proc vpi_handle*(typ: cint; refHandle: VpiHandle): VpiHandle =
  return vpi_handle_1800v2009(typ, refHandle)

proc vpi_handle_multi*(typ: cint; refHandle1, refHandle2: VpiHandle): VpiHandle {.importc: "vpi_handle_multi_1800v2009",
                                                                                  cdecl, impsv_vpi_userHdr, varargs.}

proc vpi_handle_by_index*(obj: VpiHandle; indx: cint): VpiHandle =
  return vpi_handle_by_index_1800v2009(obj, indx)

proc vpi_handle_by_multi_index*(obj: VpiHandle; num_index: cint; index_array: ptr cint): VpiHandle =
  return vpi_handle_by_multi_index_1800v2009(obj, num_index, index_array)

proc vpi_handle_by_name*(name: cstring; scope: VpiHandle): VpiHandle =
  return vpi_handle_by_name_1800v2009(name, scope)

proc vpi_iterate*(typ: cint; refHandle: VpiHandle): VpiHandle =
  return vpi_iterate_1800v2009(typ, refHandle)

proc vpi_put_value*(obj: VpiHandle; value_p: p_vpi_value; time_p: p_vpi_time; flags: cint): VpiHandle =
  return vpi_put_value_1800v2009(obj, value_p, time_p, flags)

proc vpi_register_cb*(cb_data_p: p_cb_data): VpiHandle =
  return vpi_register_cb_1800v2009(cb_data_p)

proc vpi_scan*(iter: VpiHandle): VpiHandle =
  return vpi_scan_1800v2009(iter)


proc vpiEcho*(format: string): cint {.discardable.} =
  return vpi_printf(format & "\n")

# https://forum.nim-lang.org/t/7945#50584
# User code must call this template at global scope, and only once!
template setVlogStartupRoutines*(procArray: varargs[proc() {.nimcall.}]) =
  const
    numProcs = procArray.len
  var
    # The `vlog_startup_routines` identifier below is special and needs to
    # match exactly to match this declaration in vpi_user.h:
    #   PLI_VEXTERN PLI_DLLESPEC void (*vlog_startup_routines[]) ();
    vlog_startup_routines {.inject, exportc, dynlib.}: array[numProcs + 1, proc() {.nimcall.}]
  for i in 0 ..< numProcs:
    vlog_startup_routines[i] = procArray[i]
  vlog_startup_routines[numProcs] = nil

macro vpiDefineTask*(procSym, body: untyped) =
  let
    procName = $procSym.basename # https://forum.nim-lang.org/t/7947#50608
  if procName.len <= 1:
    echo "[Error] The proc name needs to be at least 2 chars long."
    quit QuitFailure

  let
    # procName = "foo" -> intProcName = "internalFoo"
    intProcName = "internal" & procName[0].toUpperAscii() & procName[1 .. procName.high]
    intProcSym = ident(intProcName)

  result = quote do:
    proc `procSym`() =
      # Below proc needs to have the signature "proc (a1: cstring): cint
      # {.cdecl.}"  as that's what nimterop auto-parses the
      # `t_vpi_systf_data.calltf` type to.
      proc `intProcSym`(userData: cstring): cint {.cdecl.} =
        let
          userData {.inject.} = userData # https://forum.nim-lang.org/t/3964#24706
        `body`

      var
        taskDataObj = s_vpi_systf_data(type: vpiSysTask,
                                       tfname: "$" & `procName`,
                                       calltf: `intProcSym`,
                                       compiletf: nil,
                                       sizetf: nil)

      discard vpi_register_systf(addr taskDataObj)
