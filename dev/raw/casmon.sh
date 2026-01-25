#!/bin/env bash
(1) install packages
function casmon_install_packages_wget() {
  sudo pacman -Syu wget
}


function casmon_install_packages_libv() {
  sudo pacman -Syu libvirt
}

function casmon_install_packages_qemu() {
sudo pacman -Syu qemu-base
}
function casmon_install_packages() {
casmon_install_packages_qemu
casmon_install_packages_libv
casmon_install_packages_wget
}

(2) enabling service

function casmon_enabling_service_libv() {
  sudo systemctl enable libvirtd &&
  sudo systemctl start libvirtd
}

function casmon_enabling_service_qemu() {
  sudo systemctl enable qemu &&
  sudo systemctl start qemu
}

function casmon_enabling_service(){
casmon_enabling_service_qemu
casmon_enabling_service_libv
}

(3) download files qcow
(4) configs installer

function casmon() {
casmon_install_packages
casmon_enabling_service
}
casmon

