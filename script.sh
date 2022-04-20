#!/bin/bash
#https://github.com/MinerAle00/proxmox-resize

sudo apt update && sudo apt upgrade
lvremove /dev/pve/data
lvresize -l +100%FREE /dev/pve/root
resize2fs /dev/mapper/pve-root
