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

# Get device information
device_model=$(getprop ro.product.model)
android_version=$(getprop ro.build.version.release)
manufacturer=$(getprop ro.product.manufacturer)
build_id=$(getprop ro.build.id)
disk_size=$(df -h /data | awk 'NR==2{print $2}')
ram_info=$(cat /proc/meminfo | grep MemTotal)
gpu_info=$(dumpsys | grep -A 5 EGL)

# Display device information
echo "-------- Hardware Information --------"
echo "Device Model: $device_model"
echo "Android Version: $android_version"
echo "Manufacturer: $manufacturer"
echo "Build ID: $build_id"
echo "Disk Size: $disk_size"
echo "RAM Information: $ram_info"
echo "GPU Information:"
echo "$gpu_info"
echo "--------------------------------------"

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
