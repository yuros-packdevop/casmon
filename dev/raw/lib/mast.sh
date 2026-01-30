#!/bin/env bash

#-[2][1] download qcow
function casmon_master_takers() {
   if [[ $options_master != "-l" ]]; then
    return
    fi
  echo "list master"
}

#-[2][1][1] verify qcow
function casmon_master_takers_verify() {
   if [[ $options_master != "-ve" ]]; then
    return
    ficom
  echo "master terverifikasi"
}

#-[2][1][2] compare qcow
function casmon_master_takers_compar() {
   if [[ $options_master != "-co" ]]; then
    return
    ficom
  echo "master terverifikasi"
}

#-[2][2] update qcow
function casmon_master_update() {
   if [[ $options_master != "-up" ]]; then
    return
    fi
  echo "master update"
}

#-[2][2][1] verify qcow
function casmon_master_update_verify() {
   if [[ $options_master != "-uv" ]]; then
    return
    ficom
  echo "master terverifikasi"
}

#-[2][2][2] compare qcow
function casmon_master_update_compar() {
   if [[ $options_master != "-uc" ]]; then
    return
    ficom
  echo "master terverifikasi"
}

#-[2][3] delete qcow
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
    casmon_master_takers_verify
    casmon_master_takers_compar
    casmon_master_update
    casmon_master_update_verify
    casmon_master_update_compar
    casmon_master_delete
}