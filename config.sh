#!/bin/bash

# Device
export FOX_BRANCH="fox_11.0"
export DT_LINK="https://github.com/pwkpwk2022/android_device_duoqin_k61v1-master.git -b main"

export DEVICE="k61v1"
export OEM="duoqin"

# Build Target
## "recoveryimage" - for A-Only Devices without using Vendor Boot
## "bootimage" - for A/B devices without recovery partition (and without vendor boot)
## "vendorbootimage" - for devices Using vendor boot for the recovery ramdisk (Usually for devices shipped with Android 12 or higher)
export TARGET="bootimage"

export OUTPUT="boot.img"

# Additional Dependencies (eg: Kernel Source)
# Format: "repo dest"
DEPS=(
    ""
)

# Extra Command
export EXTRA_CMD="export OF_MAINTAINER=Pwk"

# Magisk
## Use the Latest Release of Magisk for the OrangeFox addon
export OF_USE_LATEST_MAGISK=false

# Not Recommended to Change
export SYNC_PATH="$HOME/work" # Full (absolute) path.
export USE_CCACHE=1
export CCACHE_SIZE="60G"
export CCACHE_DIR="$HOME/work/.ccache"
export J_VAL=16
