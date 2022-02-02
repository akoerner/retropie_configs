#!/bin/bash
# HACK: force vsync for RPI Mesa driver for now
#set -e
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
sudo killall xboxdrv
(cd $SCRIPT_DIR && sudo xboxdrv --config xboxdrv.cfg) &
VC4_DEBUG=always_sync /opt/retropie/ports/eduke32/eduke32 $*
sudo killall xboxdrv

