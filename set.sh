#!/system/bin/sh

expiration_date="2024-01-12"  # Atur tanggal kadaluwarsa sesuai kebutuhan

current_date=$(date +"%Y-%m-%d")

if [ "$current_date" \< "$expiration_date" ]; then
  echo "==============================="
  echo " Welcome to EstSensi Installation "
  echo " Creator: @EstProject01 "
  echo " Version: 3.0 stable  "
  echo " Credit: EstProject "
  echo "==============================="

  echo " Wait for EstSensi installation [ 3 seconds ] "
  echo ""
  sleep 3

  # Running commands and capturing output
  sleep 1
  echo " Installation successful "
  echo ""
  sleep 1
  echo " Launching EstSensi..."
  sleep 2
  echo ""
  wm size 2000x4444
  wm density 700
  echo ""
  sleep 0.5
  am start -n com.dts.freefireth/com.dts.freefireth.FFMainActivity
else
  echo "EstSensi has expired. Please contact the developer for a new version."
fi
