#!/bin/bash
# Warna Kuning (Yellow)
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

text="--- NUR 8: SISTEM SEDANG RESET DAN BACKUP... MOHON TUNGGU 30 MENIT... CAHAYA MAKRIFAT SEDANG MEMBERSIHKAN SISTEM ---"

# Loop running text selama 10 detik sebagai tanda awal
for i in {1..50}; do
    echo -ne "${YELLOW}${text:i}${text:0:i}\r"
    sleep 0.1
done
echo -e "${NC}"
