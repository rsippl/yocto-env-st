#!/usr/bin/env bash

set -e

bitbake st-image-core-min
cd /opt/yocto/workspace/build/tmp-glibc/deploy/images/stm32mp1/scripts
./create_sdcard_from_flashlayout.sh ../flashlayout_st-image-core-min/FlashLayout_sdcard_stm32mp157c-dk2-basic.tsv
