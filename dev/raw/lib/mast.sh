#!/bin/env bash

#-[2][1] download qcow
function casmon_master_takers() {
   if [[ $options_master != "-l" ]]; then
    return
    fi
  echo "list master"
}

#-[2][2] verify qcow
function casmon_master_verify() {
   if [[ $options_master != "-ve" ]]; then
    return
    ficom
  echo "master terverifikasi"
}

#-[2][3] update qcow
function casmon_master_update() {
   if [[ $options_master != "-up" ]]; then
    return
    fi
  echo "master update"
}

#-[2][4] delete qcow
function casmon_master_delete() {

   if [[ $options_master != "-del" ]]; then
    return
    fi
  echo "master delete"
}


function casmon_master() {

  if [[ $options != "master" ]]; then
    return
  fi
  
    casmon_master_takers
    casmon_master_verify
    casmon_master_update
    casmon_master_delete
}