#!/bin/bash

SWD="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
KVERSION=${1:-$(uname -r)}

make -C /lib/modules/${KVERSION}/build SUBDIRS=${SWD}/aic94xx clean
make -C /lib/modules/${KVERSION}/build SUBDIRS=${SWD}/aic94xx modules

