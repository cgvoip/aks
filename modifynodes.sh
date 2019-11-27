#!/bin/bash
# A menu driven shell script sample template
## ----------------------------------
# Step #1: Define variables
# ----------------------------------
EDITOR=vim
PASSWD=/etc/passwd
RED='\033[0;41;30m'
STD='\033[0;0;39m'

# ----------------------------------
# Step #2: User defined function
# ----------------------------------
pause(){
read -p "Press [Enter] key to continue..." fackEnterKey
 }

aksinfo(){
      bash <(wget -qO - https://raw.githubusercontent.com/cgvoip/aks/master/aksinfo.sh)
        pause
}

# Connect to AKS Environment
aksenv(){
    bash <(wget -qO - https://raw.githubusercontent.com/cgvoip/aks/master/test.sh)
       pause
}

# Run command on Pod
podexec(){
    echo "Execute cmd on Pod"
       pause
}



# function to display menus
show_menus() {
    clear
    echo "~~~~~~~~~~~~~~~~~~~~~"
    echo " A K S S C A L I N G - M E N U"
    echo "~~~~~~~~~~~~~~~~~~~~~"
    echo "1. Scale a replicaset"
    echo "2. Scale a resource specified in a yaml file"
    echo "3. Scale multiple replication controllers"
    echo "4. Exit"
    }

# read input from the keyboard and take a action
# invoke the one() when the user select 1 from the menu option.
# invoke the two() when the user select 2 from the menu option.
# Exit when user the user select 3 form the menu option.
read_options(){
    local choice
    read -p "Enter choice [ 1 - 4] " choice
    case $choice in
        1) aksinfo ;;
        2) aksenv ;;
        3) podexec ;;        
        4) exit 0;;
        *) echo -e "${RED}Error...${STD}" && sleep 2
    esac                                                                                                                                                                                  }
       
# ----------------------------------------------
# Step #3: Trap CTRL+C, CTRL+Z and quit singles
# ----------------------------------------------

trap '' SIGINT SIGQUIT SIGTSTP

# -----------------------------------
# Step #4: Main logic - infinite loop
# ------------------------------------

while true

do
    show_menus
    read_options
done
