.\install_dependencies.ps1
.\switch_branch.ps1
.\copy_steam_api_lib.ps1

scons use_mingw=yes platform=windows target=editor module_mono_enabled=yes production=yes lto=full mesa_libs=$HOME\AppData\Local\Godot\build_deps\mesa-x86_64-llvm accesskit=no winrt=no angle=no
.\bin\godot.windows.editor.x86_64.llvm.mono.exe --headless --generate-mono-glue modules/mono/glue
python modules/mono/build_scripts/build_assemblies.py --godot-output-dir=./bin
dotnet nuget add source (Resolve-Path .\bin\GodotSharp\Tools\nupkgs).Path --name GodotNugetSource