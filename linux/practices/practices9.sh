#
# using the function in shell
#
F_COLOR () {
    # Color codes
    RED="\033[0;31m"
    GREEN="\033[0;32m"
    CYAN="\033[0;36m"
    YELLOW="\033[1;33m"
    NC="\033[0m"

    case $1 in
        "-i") echo -e "${GREEN}INFO:: $2";;
        "-d") echo -e "${YELLOW}DEBUG:: ${2}";;
        "-w") echo -e "${CYAN}WARN:: ${2}";;
        "-e") echo -e "${RED}ERROR:: ${2}";;
    esac
        echo -e "\e[0m"
}
# F_COLOR $1 $2
F_MENU () {
    PRACTICES1="practices1.sh"
    PRACTICES2="practices2.sh"
    PRACTICES3="practices3.sh"
    PRACTICES4="practices4.sh"
    PRACTICES5="practices5.sh"
    PRACTICES6="practices6.sh"
    PRACTICES7="practices7.sh"
    PRACTICES8="practices8.sh"
    PRACTICES9="practices9.sh"
    PRACTICES="practices${M_CHOOSE}"
    PRACTICES_FILE="practices${M_CHOOSE}.sh"

    case $M_CHOOSE in
        "1") echo "You selected: ${PRACTICES}"
            bash $PRACTICES_FILE;;
        "2") echo "You selected: ${PRACTICES}"
            bash $PRACTICES_FILE;;
        "3") echo "You selected: ${PRACTICES}"
            bash $PRACTICES_FILE;;
        "4") echo "You selected: ${PRACTICES}"
            bash $PRACTICES_FILE;;
        "5") echo "You selected: ${PRACTICES}"
            bash $PRACTICES_FILE;;
        "6") echo "You selected: ${PRACTICES}"
            bash $PRACTICES_FILE;;
        "7") echo "You selected: ${PRACTICES}"
            bash $PRACTICES_FILE;;
        "8") echo "You selected: ${PRACTICES}"
            bash $PRACTICES_FILE;;
        "9") echo "You selected: ${PRACTICES}"
            echo "Message Type (-i, -d, -w, -e)"
            read MESS_TYPE
            echo "Input your message"
            read MESS
            F_COLOR $MESS_TYPE $MESS;;
    esac
}

F_MESS () {
    echo -e "Please selection the menu to access\n\
            1 - practices1.\n\
            2 - practices2.\n\
            3 - practices3.\n\
            4 - practices1.\n\
            5 - practices2.\n\
            6 - practices3.\n\
            7 - practices1.\n\
            8 - practices2.\n\
            9 - practices3.\n"
    read M_CHOOSE
    F_MENU $M_CHOOSE
}
F_MESS
