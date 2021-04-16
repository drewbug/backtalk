#!/bin/bash

set -e

unzip -u ${BR2_EXTERNAL}/bootmii_sd_files.zip bootmii/armboot.bin -d ${BINARIES_DIR}

install ${BINARIES_DIR}/zImage ${BINARIES_DIR}/bootmii/ppcboot.elf

support/scripts/genimage.sh -c ${BR2_EXTERNAL}/genimage.cfg
