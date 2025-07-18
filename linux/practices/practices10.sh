#
#Tinh nam can chi
#Bang tra cuu
#Thien can: 0-Canh,1-Tan,2-Nham,3-Quy,4-Giap,5-At,6-Binh,7-Dinh,8-Mau,9-Ky
#Dia can: 0-Ty, 1-Suu, 2-Dan, 3-Mao, 4-Thin, 5-Ty, 6-Ngo, 7-Mui, 8-Than, 9-Dau, 10-Tuan, 11-Hoi
F_BANGTHIENCAN () {
    case $1 in
        "0") THIENCAN="Canh";;
        "1") THIENCAN="Tan";;
        "2") THIENCAN="Nham";;
        "3") THIENCAN="Quy";;
        "4") THIENCAN="Giap";;
        "5") THIENCAN="At";;
        "6") THIENCAN="Binh";;
        "7") THIENCAN="Dinh";;
        "8") THIENCAN="Mau";;
        "9") THIENCAN="Ky";;
    esac
        echo "${THIENCAN}"
}
F_BANGDIACAN () {
    case $1 in
        "0") DIACAN="Ty";;
        "1") DIACAN="Suu";;
        "2") DIACAN="Dan";;
        "3") DIACAN="Mao";;
        "4") DIACAN="Thin";;
        "5") DIACAN="Ty";;
        "6") DIACAN="Ngo";;
        "7") DIACAN="Mui";;
        "8") DIACAN="Than";;
        "9") DIACAN="Dau";;
        "10") DIACAN="Tuan";;
        "11") DIACAN="Hoi";;
    esac
        echo "$DIACAN"
}
F_TINHTHIENCAN () {
        echo "Luna Year: "
        read LUNA_YEAR
        LUNA_YEAR_INT=$((LUNA_YEAR + 0))
        INDEX_THIENCAN=$(( LUNA_YEAR_INT % 10 ))
        INDEX_DIACAN=$((LUNA_YEAR_INT % 12))
        F_BANGTHIENCAN "$INDEX_THIENCAN"
        F_BANGDIACAN "$INDEX_DIACAN"
}
F_TINHTHIENCAN
