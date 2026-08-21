#!/bin/bash

sudo dnf upgrade --refresh

sudo dnf install -y \
  scons \
  pkgconfig \
  gcc-c++ \
  libstdc++-static \
  wayland-devel \
  dotnet-sdk-10.0