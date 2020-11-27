# Package

version = "0.1.0"
author = "gahan.rakholia"
description = "A personal todo app with Nim"
license = "MIT"
srcDir = "src"
bin = @["todo"]


# Dependencies

requires "nim >= 1.4.0"
requires "norm >= 2.2.2"
requires "norman >= 2.1.0"

task test, "Run tests using testament":
  exec "testament cat ."
