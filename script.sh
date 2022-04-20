#!/bin/bash
#https://github.com/MinerAle00/proxmox-resize

apt update && apt upgrade
lvremove /dev/pve/data
lvresize -l +100%FREE /dev/pve/root
resize2fs /dev/mapper/pve-root
