#!/bin/sh

set -u
set -e

install -D -m 0644 ${BR2_EXTERNAL_BACKTALK_PATH}/rpi-firmware/cmdline.txt ${BINARIES_DIR}/rpi-firmware/cmdline.txt

support/scripts/genimage.sh -c ${BR2_EXTERNAL_BACKTALK_PATH}/genimage.cfg
