import svvpi

vpiDefine task hello:
  calltf:
    vpiEcho("Hello!")

vpiDefine task bye:
  calltf:
    vpiEcho("Bye!")

# Register the tasks.
setVlogStartupRoutines(hello, bye)
