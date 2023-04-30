uptime=$(uptime | cut -d ',' -f1 | cut -d ' ' -f4,5)
date=$(date +"%a %F %H: %M")
linux_version=$(uname -r | cut -d '-' -f1)
battery_status=$(cat /sys/class/power_supply/BAT0/status)

echo $uptime - $linux_version - $battery_status - $date
