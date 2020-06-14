#!/bin/bash
#EPEL Repo Shell 
#Auth : Tamilankural

echo " TERMUX BASIC TOOLS "
echo " Auth : Tamilankural "

DELAY=6 # Number of seconds to display results
while true; do
	cat << EOF
        Please Select:
        1. NMAP.
        2. PHP.
        3. WGET.
		4. GIT.
		5. PYTHON&PYTHON2
		6. OPENSSH
		7. STORAGE
		8. NET-TOOL
		9. ZIP&UNZIP
		10.Package
		11.ALL
        0. Quit
EOF
    read -p "Enter selection [0-10] > "
    case "$REPLY" in
        0)
            break
            ;;
        1)
            echo " NMAP TOOL Is Download...."
            apt update && upgrade -y
            apt install nmap -y
			echo " nmap tool install successful "
			echo " Type nmap "
            ;;
        2)
            echo " PHP TOOL Is Download...."
            apt update && upgrade -y
            apt install php -y
			echo " php tool install successful "
			echo " Type php --help "
            ;;
        3)
            echo " WGET TOOL Is Download...."
            apt update && upgrade -y
            apt install wget -y
			echo " wget tool install successful "
			echo " Type wget --help "
            ;;
		4)
            echo " GIT TOOL Is Download...."
            apt update && upgrade -y
            apt install git -y
			echo " git tool install successful "
			echo " Type git --help "
			;;
		5)
            echo " PYTHON&PYTHON2 TOOL Is Download...."
            apt update && upgrade -y
            apt install python -y && apt install python2 -y
			echo " PYTHON&PYTHON2 tool install successful "
			#echo " Type git --help "
			;;
		6)
            echo " OPENSSH TOOL Is Download...."
            apt update && upgrade -y
            apt install openssh -y
			echo " openssh tool install successful "
			echo " Type openssh --help "
			;;
		7)
            echo "  Storage Setup...."
			termux-setup-storage
			echo " successful "
			echo " Type cd /sdcard "
			;;	
		8)
            echo " NET-TOOL TOOL Is Download...."
            apt update && upgrade -y
            apt install net-tool -y
			echo " net-tool tool install successful "
			#echo " Type net-tool --help "
			;;
		9)
            echo " ZIP&UNZIP Is Download...."
            apt update && upgrade -y
            apt install zip -y && apt install unzip -y
			echo " ZIP&UNZIP tool install successful "
			#echo " Type net-tool --help "
			;;
		10)
            echo " NET-TOOL TOOL Is Download...."
            pkg install root-repo
			pkg install unstable-repo
			pkg install x11-repo
		    apt update && upgrade -y
           echo " Thanks for add repo.your installtation successful "
			#echo " Type net-tool --help "
			;;
		11)
            echo " NET-TOOL TOOL Is Download...."
            pkg install root-repo
			pkg install unstable-repo
			pkg install x11-repo
		    apt update && upgrade -y
			apt install nmap -y
			apt install php -y
			apt install wget -y
			apt install git -y
			apt install python -y && apt install python2 -y
			apt install openssh -y
			termux-setup-storage
			apt install net-tool -y
			apt install zip -y && apt install unzip -y
		  echo " Thanks for add repo.your installtation successful "
			#echo " Type net-tool --help "
			
		
        *)
            echo "Invalid entry."
            exit 0
            ;;
    esac
    sleep "$DELAY"
done
echo " Thanks for Watching "
echo "Program terminated."
