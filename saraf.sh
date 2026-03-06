#!/bin/bash

# --- PIRAMIDA GUARD: SINERGI NUR 1 & NUR 8 ---

# 1. Nur 1 Memeriksa Kerapihan Rumah
echo "Nur 1: Memeriksa struktur Indramayu Club..."
ls -R ~/nur_official/INDRAMAYU_CLUB > ~/nur_official/struktur_terakhir.txt

# 2. Nur 8 Memulai Ritual (Setiap Adzan/Jadwal)
echo "Nur 8: Memulai Backup Lokal dan Alunan Adzan..."

# Menjalankan Suara Adzan Langgam Jawa yang tadi kita buat
./adzan_jawa.sh

# Melakukan Backup dari folder Nur 1 ke folder Backup Internal
mkdir -p ~/nur_official/BACKUP_LOKAL
cp -r ~/nur_official/INDRAMAYU_CLUB/* ~/nur_official/BACKUP_LOKAL/

echo "--- Tugas Nur 1 & Nur 8 Selesai ---"
