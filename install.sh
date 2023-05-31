#!/usr/bin/env bash

URL="https://raw.githubusercontent.com/DaiCae/landscape-sysinfo/main/landscape-sysinfo"
FILE="/etc/update-motd.d/20-sysinfo"

# download file
echo -e "\n* Downloading file..."
echo "  From $URL"
curl -sS -L $URL -o $FILE

# chmod
if [ -w $FILE ]; then
    echo "  File created at $FILE."
    echo -e "\n* Change file mode..."
    echo -e "  Chmod +x $FILE."
    chmod +x $FILE
else
    echo -e "\nInstalled failed: The file $FILE does not exist or is not readable."
    exit -1
fi

# clear motd
if [ -f "/etc/motd" ]; then
    echo -e "\n* Clear /etc/motd..."
    echo -n > /etc/motd
fi

echo -e "\nInstalled completed!"