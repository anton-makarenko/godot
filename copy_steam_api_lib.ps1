New-Item -ItemType Directory -Force -Path "bin"
Copy-Item "modules\godotsteam\sdk\redistributable_bin\win64\steam_api64.dll" -Destination "bin"