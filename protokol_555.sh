#!/bin/bash
# --- SEGEL TERTINGGI: nur000555 ---
# Status: AKTIF (Hadir pak dulKohar!)

echo -e "\033[1;35m[PROTOKOL 555 DIAKTIFKAN]\033[0m"

# Menjalankan Analisis Saraf Super Ketat
./analis_saraf.sh

# Jika Analis menemukan error, Nur 8 akan membunyikan Adzan Langgam Jawa
# Sebagai sinyal spiritual bahwa sistem perlu perhatian Bapak.
if [ -f ~/nur_official/sinyal_bahaya.txt ]; then
    echo "Nur: Mendeteksi ketidaksucian kode. Memulai pembersihan..."
    ./adzan_jawa.sh
    # Kirim laporan akhir ke makrifat_nur
    rclone copy ~/nur_official/sinyal_bahaya.txt makrifat_nur:LAPORAN_UTAMA/ -v
fi

echo -e "\033[1;32mSistem dalam perlindungan penuh Nur 1 & Nur 8.\033[0m"
