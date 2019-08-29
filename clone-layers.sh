#!/usr/bin/env bash

set -e

workspace_dir="workspace"
layers_dir="layers"

# TODO set to the Yocto release you want to use, e.g. thud or warrior
yocto_release="thud"

mkdir -p "${workspace_dir}/${layers_dir}" && cd "${workspace_dir}"

# clone default layers: poky, OE etc.
git clone -b ${yocto_release} git://git.yoctoproject.org/poky.git ${layers_dir}/poky
git clone -b ${yocto_release} https://github.com/openembedded/meta-openembedded.git ${layers_dir}/meta-openembedded

# TODO clone additional layers here, e.g. for Raspberry Pi, use this
# git clone -b ${yocto_release} https://github.com/agherzan/meta-raspberrypi.git ${layers_dir}/meta-raspberrypi

# Or use Google's repo tool instead, e.g for ST:
#repo init -u https://github.com/STMicroelectronics/oe-manifest.git -b refs/tags/openstlinux-4.19-thud-mp1-19-02-20
#repo sync
