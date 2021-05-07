import std/[os]
import nimterop/cimport

when defined(svGenWrapper):
  static:
    cDisableCaching()
    cDebug()

const
  # includePath = getEnv("XCELIUM_ROOT") / ".." / "include"
  sourceDir = currentSourcePath.parentDir()
  includePath = sourceDir / ".." / "includes"
static:
  doAssert fileExists(includePath / "sv_vpi_user.h")
  doAssert fileExists(includePath / "vpi_user.h")
  doAssert fileExists(includePath / "vpi_compatibility.h")
  # Put cAddSearchDir in static block: https://github.com/nimterop/nimterop/issues/122
  cAddSearchDir(includePath)

cPlugin:
  proc onSymbol*(sym: var Symbol) {.exportc, dynlib.} =
    case sym.name
    # For Nim, the vpiHandle and vpi_handle identifiers are identical.
    # But the vpi_user.h has vpiHandle for type name and vpi_handle for a function
    # name. Below maps the vpi_handle function to a vpi_handle_1 proc in Nim.
    of "vpi_handle": sym.name = "vpi_handle_1"
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

# cdefine("VPI_COMPATIBILITY_VERSION_1800v2009")

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
