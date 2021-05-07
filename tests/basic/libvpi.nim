import svvpi

vpiDefineTask hello:
  discard vpi_printf("Hello!\n")

vpiDefineTask bye:
  discard vpi_printf("Bye!\n")

# Register the new system task.
setVlogStartupRoutines(hello, bye)
