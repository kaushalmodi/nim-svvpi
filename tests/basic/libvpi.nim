import svvpi

vpiRegisterTask hello:
  discard vpi_printf("Hello!\n")

vpiRegisterTask bye:
  discard vpi_printf("Bye!\n")

# Register the new system task.
setVlogStartupRoutines(hello, bye)
