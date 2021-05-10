import svvpi

vpiDefineTask hello:
  vpiEcho("Hello!")

vpiDefineTask bye:
  vpiEcho("Bye!")

# Register the tasks.
setVlogStartupRoutines(hello, bye)
