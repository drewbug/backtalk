#!/bin/bash

set -e

unzip -u ${BR2_EXTERNAL}/bootmii_sd_files.zip bootmii/armboot.bin -d ${BINARIES_DIR}

install ${BR2_EXTERNAL}/gumboot.elf ${BINARIES_DIR}/bootmii/ppcboot.elf

install -D ${BR2_EXTERNAL}/gumboot.lst ${BINARIES_DIR}/gumboot/gumboot.lst

support/scripts/genimage.sh -c ${BR2_EXTERNAL}/genimage.cfg
