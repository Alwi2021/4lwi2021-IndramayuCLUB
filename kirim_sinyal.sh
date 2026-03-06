#!/bin/bash
# Sinyal dikirim ke makrifat_nur untuk dicatat di Cloud
MESSAGE=$1
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${YELLOW}!!! SINYAL ERROR TERKIRIM KE MAKRIFAT_NUR: $MESSAGE !!!${NC}"

# Mencatat ke Google Drive melalui makrifat_nur agar Bapak tahu dari mana saja
echo "$MESSAGE" > ~/nur_official/sinyal_bahaya.txt
rclone copy ~/nur_official/sinyal_bahaya.txt makrifat_nur:LAPORAN_ERROR/ -v
