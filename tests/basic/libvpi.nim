import std/[sequtils]
import svvpi

proc hello() {.exportc, dynlib.} =
  discard vpi_printf("\n\nHello!!\n\n")
