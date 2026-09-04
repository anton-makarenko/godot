#!/bin/bash

sudo dnf upgrade --refresh -y

sudo dnf install -y \
  scons \
  pkgconfig \
  gcc-c++ \
  libstdc++-static \
  wayland-devel \
  dotnet-sdk-10.0
  
# For WSL
sudo dnf install -y mesa-libGL mesa-libEGL mesa-libGLU mesa-dri-drivers fontconfig libX11 libXcursor libXinerama libXrandr libXi libdecor libxkbcommon xkeyboard-config