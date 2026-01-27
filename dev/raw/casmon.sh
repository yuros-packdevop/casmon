#!/bin/env bash
#--[1] install packages
#--[2] enabling service
#--[3] download files qcow
#--[4] configs installer
#--[5] start installer


## main process for casmon
## revision by null @ 26
#--[1] option dialog
function casmon_dialog() {
  options=$1
  options_deploy=$2
  options_master=$2

  casmon_deploy
  casmon_master
}

#-[1] qcow management
#-[2][1] download qcow
function casmon_master_takers() {
   if [[ $options_master != "-l" ]]; then
    return
    fi
  echo "list master"
}

#-[2][1](1) download qcow ubuntu
function casmon_master_takers_ubuntu() {
  if [[ $option_master != "1" ]]; then
  return
  fi
  echo "master download ubuntu"
}

#-[2][2] update qcow
function casmon_master_update() {
   if [[ $options_master != "master_update" ]]; then
    return
    fi
  echo "master update"
}

#-[2][3] delete qcow
function casmon_master_delete() {

   if [[ $options_master != "master_delete" ]]; then
    return
    fi
  echo "master delete"
}


function casmon_master() {

  if [[ $options != "master" ]]; then
    return
  fi
  
casmon_master_takers
casmon_master_takers_ubuntu
casmon_creates_update
casmon_creates_delete
}


#-[2] host management
#-[2](1) create host
function casmon_deploy_create() {

   if [[ $options_deploy != "deploy_create" ]]; then
    return
    fi
  echo "deploy create"
}


#-[2](2) starts host
function casmon_deploy_starts() {
 if [[ $options_deploy != "deploy_starts" ]]; then
    return
    fi
echo "deploy start"
}

#-[2](3) snaper host
function casmon_deploy_snaper() {
  if [[ $options_deploy != "deploy_snaper" ]]; then
    return
    fi
  echo "deploy snaper"
}
#-[2](4) delete host
function casmon_deploy_delete() {
if [[ $options_deploy != "deploy_delete" ]]; then
    return
    fi
echo "deploy delete"
}

#-[2](5) update host
function casmon_deploy_update() {
  if [[ $options_deploy != "deploy_update" ]]; then
    return
    fi
    
  echo "deploy update"
}

function casmon_deploy() {
  
  if [[ $options != "deploy" ]]; then
    return
  fi
  casmon_deploy_create
  casmon_deploy_update
  casmon_deploy_delete
  casmon_deploy_snaper
  casmon_deploy_starts
}


function casmon() {
  casmon_dialog $1 $2
}
casmon $1 $2


