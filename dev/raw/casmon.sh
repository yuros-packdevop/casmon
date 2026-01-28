#!/bin/env bash

## main process for casmon
## revision by null @ 26
#--[1] option dialog
source lib/dialog.sh
#-[2] qcow management
source lib/master.sh
#-[3] host management
source lib/host.sh


function casmon() {
  casmon_dialog $1 $2
}
casmon $1 $2


