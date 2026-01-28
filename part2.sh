#!/usr/bin/env bash
set -e

echo "=== Proxmox VE – Fase 2 (Paquetes) ==="

apt update

apt install -y proxmox-ve postfix open-iscsi chrony

apt remove -y linux-image-amd64 'linux-image-6.12*' || true
update-grub

apt remove -y os-prober || true

echo "=================================================="
echo " Proxmox VE instalado correctamente"
echo " Accede a: https://IP:8006"
echo "=================================================="
