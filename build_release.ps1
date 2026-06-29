. .\switch_branch.ps1
Switch-Branch

scons use_mingw=yes platform=windows target=editor module_mono_enabled=yes lto=full mesa_libs=C:\Users\makar\AppData\Local\Godot\build_deps\mesa-x86_64-llvm accesskit=no winrt=no angle=no copy_mono_root=yes
.\bin\godot.windows.editor.x86_64.llvm.mono.exe --headless --generate-mono-glue modules/mono/glue
python modules/mono/build_scripts/build_assemblies.py --godot-output-dir=./bin