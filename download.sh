#!/usr/bin/env bash
set -e

# Arch Linux Install Script (alis) installs unattended, automated
# and customized Arch Linux system.
# Copyright (C) 2020 picodotdev

GITHUB_USER="shredstick"

while getopts "u:" arg; do
  case ${arg} in
    u)
      GITHUB_USER=${OPTARG}
      ;;
    ?)
      echo "Invalid option: -${OPTARG}."
      exit 1
      ;;
  esac
done

rm -f alis.conf
rm -f alis.sh


curl -O https://raw.githubusercontent.com/$GITHUB_USER/arch/main/alis.conf
curl -O https://raw.githubusercontent.com/$GITHUB_USER/arch/main/alis.sh
curl -O https://raw.githubusercontent.com/$GITHUB_USER/arch/main/alis-reboot.sh


chmod +x alis.sh
chmod +x alis-asciinema.sh
chmod +x alis-reboot.sh

chmod +x alis-recovery.sh
chmod +x alis-recovery-asciinema.sh
chmod +x alis-recovery-reboot.sh
