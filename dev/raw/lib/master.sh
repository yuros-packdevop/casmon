#!/bin/env bash

#-[2][1] download qcow
function casmon_master_takers() {
   if [[ $options_master != "-l" ]]; then
    return
    fi
  echo "list master"
}

#-[2][1](1) download qcow ubuntu
function casmon_master_takers_ubuntu() {
  if [[ $options_master_os != "-ub" ]]; then
  return
  fi
  echo "master download ubuntu"
}

#-[2][1](2) download qcow debian
function casmon_master_takers_debian() {
  if [[ $options_master_os != "-de" ]]; then
  return
  fi
  echo "master download debian"
}

#-[2][1](3) download qcow fedora
function casmon_master_takers_fedora() {
  if [[ $options_master_os != "-fe" ]]; then
  return
  fi
  echo "master download fedora"
}

#-[2][1](3) download qcow arch
function casmon_master_takers_arch() {
  if [[ $options_master_os != "-ar" ]]; then
  return
  fi
  echo "master download arch"
}

#-[2][2] verify qcow
function casmon_master_verify() {
   if [[ $options_master != "-ve" ]]; then
    return
    fi
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
casmon_master_takers_ubuntu
casmon_master_takers_debian
casmon_master_takers_fedora
casmon_master_takers_arch
casmon_master_verify
casmon_master_update
casmon_master_delete
}