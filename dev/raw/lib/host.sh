#!/bin/env bash

#-[3](1) create host
function casmon_deploy_create() {

   if [[ $options_deploy != "deploy_create" ]]; then
    return
    fi
  echo "deploy create"
}


#-[3](2) starts host
function casmon_deploy_starts() {
 if [[ $options_deploy != "deploy_starts" ]]; then
    return
    fi
echo "deploy start"
}

#-[3](3) snaper host
function casmon_deploy_snaper() {
  if [[ $options_deploy != "deploy_snaper" ]]; then
    return
    fi
  echo "deploy snaper"
}
#-[3](4) delete host
function casmon_deploy_delete() {
if [[ $options_deploy != "deploy_delete" ]]; then
    return
    fi
echo "deploy delete"
}

#-[3](5) update host
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