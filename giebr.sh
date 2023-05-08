                                                                      #!/bin/bash
clear
echo -e "\e[34m
        ██████╗ ██╗███████╗██████╗ ██████╗
       ██╔════╝ ██║██╔════╝██╔══██╗██╔══██╗
       ██║  ███╗██║█████╗  ██████╔╝██████╔╝
       ██║   ██║██║██╔══╝  ██╔══██╗██╔══██╗
       ╚██████╔╝██║███████╗██████╔╝██║  ██║
        ╚═════╝ ╚═╝╚══════╝╚═════╝ ╚═╝  ╚═╝\e[0m"

# Set yellow color for text
YELLOW='\033[1;33m'
# Reset text color
NC='\033[0m'

echo -e "${YELLOW}[-] This tool is for educational purposes only${NC}"

echo [1] Start zphisher

echo [2] Edit giebr with nano

echo [3] Exit

echo [4] Install zphisher

options=("1" "2" "3" "4")

select choice in "${options[@]}"
do
    case $choice in
        "1")
            cd
            cd zphisher
            bash zphisher.sh
            ;;                                                                      
        "2")
            nano giebr.sh
            ;;
        "3")
            break
            clear
            ;;
        "4")
            clear
            git clone --depth=1 https://github.com/htr-tech/zphisher.git
            clear
            echo Zphisher is installed!
            echo ======================
            ;;
        *) # catch invalid options
            echo  "[ERR] Invalid option!"
            ;;
    esac
done
