#!/bin/env bash

function casmon_dialog() {
  options=$1
  options_deploy=$2
  options_master=$2
  options_master_os=$2 $3

  casmon_deploy
  casmon_master
}