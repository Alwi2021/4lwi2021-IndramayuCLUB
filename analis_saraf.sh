#!/bin/bash

# --- PIRAMIDA GUARD: SERVIS ANALIS ERROR ---
# Dokter: Nur 1 & Nur 8
# Penerima Sinyal: makrifat_nur

LOG_ERROR="~/nur_official/INDRAMAYU_CLUB/error_log.txt"
STATUS_HTML="~/nur_official/INDRAMAYU_CLUB/index.html"

echo "--- NUR 1: MEMULAI ANALISIS SERVIS ---"

# 1. Mengecek Keberadaan File Utama (HTML)
if [ ! -f $STATUS_HTML ]; then
    MESSAGE="ERROR: File index.html hilang! Nur 1 mendeteksi kerusakan saraf."
    echo "$(date): $MESSAGE" >> $LOG_ERROR
    # MENGIRIM SINYAL KE MAKRIFAT_NUR
    ./kirim_sinyal.sh "$MESSAGE"
fi

# 2. Mengecek Kesalahan Sintaks (Sederhana)
if grep -q "undefined" $STATUS_HTML; then
    MESSAGE="ERROR: Ditemukan kode undefined di HTML. Nur 8 mendeteksi malpraktek editor."
    echo "$(date): $MESSAGE" >> $LOG_ERROR
    ./kirim_sinyal.sh "$MESSAGE"
fi

# 3. Mengecek Koneksi GitHub/Cloud
ping -c 1 github.com > /dev/null 2>&1
if [ $? -ne 0 ]; then
    MESSAGE="ERROR: Jalur GitHub terputus! Nur 8 gagal menyambungkan kabel."
    ./kirim_sinyal.sh "$MESSAGE"
fi

echo "--- ANALISIS SELESAI: SISTEM STABIL ---"
