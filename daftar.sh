#!/bin/bash
clear
echo "======================================"
echo "   FORM PENDAFTARAN INDRAMAYU CLUB    "
echo "======================================"
read -p "Nama Lengkap: " nama
read -p "Umur        : " umur
read -p "Gender (L/P): " jk
echo "| $nama | $umur | $jk | $(date +'%d-%m-%Y') |" >> member.md
echo "--------------------------------------"
echo "Data Berhasil Dicatat ke member.md!"
