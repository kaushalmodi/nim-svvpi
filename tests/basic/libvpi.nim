import svvpi

vpiDefineTask hello:
  vpi_printf("Hello!\n")

vpiDefineTask bye:
  vpi_printf("Bye!\n")

# Register the tasks.
setVlogStartupRoutines(hello, bye)
