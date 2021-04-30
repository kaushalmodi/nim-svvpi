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
    # For Nim, the vpiHandle and vpi_handle identifiers are identical.
    # But the vpi_user.h has vpiHandle for type name and vpi_handle for a function
    # name. Below maps the vpi_handle function to a vpi_handle_1 proc in Nim.
    if sym.name == "vpi_handle":
      sym.name = "vpi_handle_1"

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
