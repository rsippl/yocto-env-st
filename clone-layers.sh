#!/usr/bin/env bash

set -e

workspace_dir="workspace"
layers_dir="layers"

mkdir -p "${workspace_dir}/${layers_dir}" && cd "${workspace_dir}"

repo init -u https://github.com/STMicroelectronics/oe-manifest.git -b refs/tags/openstlinux-4.19-thud-mp1-19-02-20
repo sync
