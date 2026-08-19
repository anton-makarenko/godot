$dependencies = "Python.PythonInstallManager", "MartinStorsjo.LLVM-MinGW.UCRT"
winget install $dependencies
python misc\scripts\install_d3d12_sdk_windows.py
python -m pip install scons

$PythonLongVersion = ((python --version) -split " ")[1]
$PythonVersionDigits = $PythonLongVersion -split "\."
$PythonShortVersion = "$($PythonVersionDigits[0]).$($PythonVersionDigits[1])"
$AddPath = "C:\Users\anton\AppData\Local\Python\pythoncore-$PythonShortVersion-64\Scripts"
$CurrentPath = [System.Environment]::GetEnvironmentVariable("Path", "User").TrimEnd(';')

if ($CurrentPath -split ';' -notcontains $AddPath) {
    $UpdatedPath = "$CurrentPath;$AddPath"
    [System.Environment]::SetEnvironmentVariable("Path", $UpdatedPath, "User")
    $env:Path = $env:Path.TrimEnd(';') + ";$AddPath;"
}