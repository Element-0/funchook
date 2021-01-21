# Package

version       = "0.1.0"
author        = "CodeHz"
description   = "FuncHook bindings for ElementZero Project"
license       = "LGPL-3.0"
srcDir        = "."
installExt    = @["nim", "dll"]


# Dependencies

requires "nim >= 1.4.2"
requires "ezutils"

const link = "https://github.com/Element-0/Dependencies/releases/download/funchook-9f414f77ef504048e17836f3eb3455ca86a472b7/funchook.dll"

task prepare, "Prepare funchook.dll":
  if not fileExists "./funchook.dll":
    exec "curl -Lo funchook.dll " & link

before install:
  prepareTask()