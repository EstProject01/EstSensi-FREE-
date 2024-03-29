#!/system/bin/bash

# Define expiration date (format: YYYYMMDD)
expiration_date=20240411

# Check expiration date
current_date=$(date +%Y%m%d)
if [ $current_date -gt $expiration_date ]; then
    echo " Error: Uninstallation is not allowed as the product has expired. Please contact EstProject for assistance."
    exit 1
fi

echo "==============================="
echo " Welcome to EstSensi Uninstaller "
echo " Creator: @EstProject01 "
echo " Version: 4.0 end "
echo " Credit: EstProject "
echo " Build Date: 09-03-2024 "
echo "==============================="

echo " Wait for EstSensi uninstallation [ 5 seconds ] "
echo ""
sleep 5

wm size reset
sleep 1
echo " reset size success "
echo ""
wm density reset
sleep 1
echo " density reset success "
echo ""
sleep 2
echo " Uninstallation Successfully "
