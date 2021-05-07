import svvpi

vpiRegisterTask "hello":
  discard vpi_printf("\n\nHello!!\n\n")

# Register the new system task.
setVlogStartupRoutines(dollarHello)
