#!/bin/bash
# Menampilkan Running Text Kuning yang tenang
echo -e "\033[1;33m--- NUR 8: MENYALAKAN ALUNAN KETENANGAN SISTEM ---\033[0m"

# Memutar Adzan Langgam Jawa (Pastikan file .mp3 sudah ada di folder)
# Jika file belum ada, sistem akan memberikan peringatan lembut
if [ -f ~/nur_official/INDRAMAYU_CLUB/adzan_langgam_jawa.mp3 ]; then
    mpv ~/nur_official/INDRAMAYU_CLUB/adzan_langgam_jawa.mp3 --volume=70
else
    echo "Nur: File adzan belum ditemukan di folder INDRAMAYU_CLUB."
    # Alternatif: Menggunakan suara digital jika file mp3 tidak ada
    termux-tts-speak "Sistem sedang melakukan pembersihan. Cahaya makrifat menyertai Anda."
fi
