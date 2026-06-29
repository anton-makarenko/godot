. .\switch_branch.ps1
Switch-Branch

scons use_mingw=yes platform=windows target=editor vsproj=yes module_mono_enabled=yes mesa_libs=C:\Users\makar\AppData\Local\Godot\build_deps\mesa-x86_64-llvm accesskit=no winrt=no angle=no
if (Test-Path -Path "godot.slnx") {
	rm godot.slnx
}
dotnet sln migrate
rm godot.sln