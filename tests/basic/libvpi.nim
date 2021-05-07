import svvpi

# Associate the `hello` Nim proc with a new System Task.
proc dollarHello() =
  # The proc needs to have the signature "proc (a1: cstring): cint {.cdecl.}"
  # as that's what nimterop auto-parses the `t_vpi_systf_data.calltf` type to.
  proc hello(s: cstring): cint {.cdecl.} =
    discard vpi_printf("\n\nHello!!\n\n")

  var
    taskDataObj = s_vpi_systf_data(`type`: vpiSysTask,
                                   tfname: "$hello",
                                   calltf: hello)

  discard vpi_register_systf(addr taskDataObj)

# Register the new system task.
setVlogStartupRoutines(dollarHello)
