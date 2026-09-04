#!/bin/bash

./switch_branch.sh
./copy_steam_api_lib.sh

scons platform=linuxbsd target=editor arch=x86_64 module_mono_enabled=yes production=yes lto=full accesskit=no
./bin/godot.linuxbsd.editor.x86_64.mono --headless --generate-mono-glue modules/mono/glue
python modules/mono/build_scripts/build_assemblies.py --godot-output-dir=./bin
dotnet nuget add source $(realpath ./bin/GodotSharp/Tools/nupkgs) --name GodotNugetSource