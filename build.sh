#!/bin/bash

SWD="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

make -C /lib/modules/$(uname -r)/build SUBDIRS=$(SWD)/aic94xx modules
