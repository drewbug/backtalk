#!/bin/sh
# For on-board BT, route SCO packets to the HCI interface (enables HFP/HSP)

set -e

/usr/bin/hciconfig "$1" | grep -q "BD Address: B8:27:EB:" || exit 0

/usr/bin/hcitool -i "$1" cmd 0x3f 0x1c 0x01 0x02 0x00 0x01 0x01 > /dev/null
