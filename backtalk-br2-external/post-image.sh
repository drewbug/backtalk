#!/bin/sh

set -u
set -e

echo "root=/dev/mmcblk0p2 rootwait console=tty1" > ${BINARIES_DIR}/rpi-firmware/cmdline.txt

support/scripts/genimage.sh -c ${BR2_EXTERNAL_BACKTALK_PATH}/genimage.cfg
