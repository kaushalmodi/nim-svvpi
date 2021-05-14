import svvpi

vpiDefine task hello:
  calltf:
    vpiEcho("Hello!")

vpiDefine task bye:
  calltf:
    vpiEcho("Bye!")

vpiDefine function do_nothing:
  compiletf: discard
  calltf: discard
  sizetf: discard

# Register the tasks.
setVlogStartupRoutines(hello, bye, do_nothing)
