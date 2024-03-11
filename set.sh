#!/system/bin/bash

# Define expiration date (format: YYYYMMDD)
expiration_date=20240315

# Check expiration date
current_date=$(date +%Y%m%d)
if [ $current_date -gt $expiration_date ]; then
    echo " Error: Installation has expired. Please contact EstProject for assistance."
    exit 1
fi

echo "==============================="
echo " Welcome to EstSensi Installation "
echo " Creator: @EstProject01 "
echo " Version: 3.0 "
echo " Credit: EstProject "
echo "==============================="

echo " Wait for EstSensi installation [ 5 seconds ] "
echo ""
sleep 5

# Running commands and capturing output
if ; then
    echo ""
    sleep 1
    echo " Installation successful "
    echo ""
    sleep 1
    echo " Launching EstSensi..."
    sleep 2
    am start -n com.dts.freefireth/com.dts.freefireth.FFMainActivity
fi
