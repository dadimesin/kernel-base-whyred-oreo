#
# Copyright © 2016
#
# This software is licensed under the terms of the GNU General Public
# License version 2, as published by the Free Software Foundation, and
# may be copied, distributed, and modified under those terms.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# Please maintain this if you use this script or any part of it

# Color Code Script
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White
nocol='\033[0m'         # Default


# Tweakable Options Below
export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE="$HOME/<YOUR TOOLCHAIN PATH>/bin/aarch64-linux-android-"


echo -e "$Green***********************************************"
echo "         BUILDING KERNEL...       "
echo -e "***********************************************$nocol"

make -j$(nproc --all) 	O=out \
			ARCH=arm64 \
			SUBARCH=arm64 \


# If the above was successful
echo -e "$Green BUILD SUCCESSFUL $nocol"
