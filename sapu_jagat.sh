#!/data/data/com.termux/files/usr/bin/bash
echo "--- Menghidupkan Saraf Piramida Guard ---"

# Daftar Saraf dan Akun
declare -A saraf
saraf["INDRAMAYU_CLUB"]="Nur_1"
saraf["DISKUSI"]="Nur_2"
saraf["ADMINISTRASI"]="Nur_3"
saraf["KREATOR_DIGITAL"]="Nur_4"
saraf["GAME_ARISAN"]="Nur_5"
saraf["BANK_GAME"]="Nur_6"
saraf["GAME_INDRAMAYU"]="Nur_7"
saraf["KOMUNIKASI"]="Nur_7_Anak"
saraf["BACKUP"]="Nur_8"
saraf["AI_MUBIN"]="Nur_2_Mubin"
saraf["AI_KESATRIA"]="Nur_Satria"

for folder in "${!saraf[@]}"; do
    echo "Menyambungkan Saraf: $folder ..."
    rclone copy ${saraf[$folder]}: ~/nur_official/$folder -P --max-depth 1
    if [ $? -eq 0 ]; then
        echo "✅ Saraf $folder Terhubung."
    else
        echo "❌ Saraf $folder Gagal (Cek Sinyal/Config)."
    fi
done

echo "--- Pembersihan Selesai ---"
