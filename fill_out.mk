# Path to the root directories
CWD			= $(shell pwd)
NDK			:= $(CWD)/../android-ndk-r8e
SDK			:= $(CWD)/../adt-bundle-linux-x86_64-20130219/sdk
KERNELDIR		:= $(CWD)/../omap

# Select the device to build kernel modules for
# Supported devices are located in the devices folder.
include devices/nexus7.mk

# Targeted Android platform version.
#
# In order to list possible platforms : 
#   ls ${NDK}/platforms
#
# API versions can be found on : 
#   http://developer.android.com/about/dashboards/index.html
#
PLATFORM		:= android-14

# Where to install temporary files on build machine
INSTALL_PATH		:= /tmp/lttng-android

# Where lttng will be installed on the device
# WARNING : Should not be the same path
#           as the one containing .../var/run
REMOTE_INSTALL_PATH	:= /data/lttng-install
PACKAGE_PUSH_PATH	:= /data/lttng-package

# This path needs to be writable for the adb push
PACKAGE_PUSH_PATH	:= /sdcard/lttng-android.tar

# Build platform 
# Select the one that fits best
BUILD_PLATFORM		:= linux-x86_64
#BUILD_PLATFORM		:= linux-x86
