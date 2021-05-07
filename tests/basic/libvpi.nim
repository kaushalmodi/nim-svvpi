import svvpi

proc hello() {.exportc, dynlib.} =
  discard vpi_printf("\n\nHello!!\n\n")

proc foo() = echo "hi"
proc bar() = echo "there"
setVlogStartupRoutines(foo, bar)
