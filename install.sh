#!/data/data/com.termux/files/usr/bin/bash
#Coded by Ivam3 on 02 Agust 2018
#
set -euo pipefail
#
#Define colors
                R='\033[1;31m'
                G='\033[1;32m'
                Y='\033[1;33m'
                B='\033[1;34m'
                M='\033[1;35m'
                C='\033[1;36m'
                W='\033[0m'
		PWD=$(pwd)
#
#TRAPPING Ctrl+C
                trap ctrl_c 2
#
function ctrl_c() {
        printf "        $R [W] Do you wanna exit ?$W \n"
	printf "$Y [!]$W Type$R 'y'$W to restored all or type$G 'n'$W to continue\n"
	while read -n 1 -p " >> " cxl && [ -z $cxl ]; do
		printf "$R O-ops!!$W \n"
	done
		if [ $cxl = 'y' -o $cxl = 'Y' ] ; then
                                rm $PREFIX/var/log/login-termux
                                rm $PREFIX/libexec/colors
                                rm -r $PREFIX/libexec/termux/.Ivam3
				rm -r $PREFIX/libexec/termux/.Cinderella
				rm -r $PREFIX/libexec/termux/.Quiz
                                rm -rf $PREFIX/libexec/banner
                                cat $PREFIX/etc/bashito > $PREFIX/etc/bash.bashrc
                                rm $PREFIX/etc/bashito
                                source $PWD/banner/thanks
                                echo $(exit)
                        fi
                if [ $cxl = 'n' -o $cxl = 'N' ] ; then
                                continue
                        fi
        }
#
function banner {
	echo $(clear)
printf "$C"
        echo "         -{ IbyC Login Termux } "
        echo "   -{ SO > Android - Only for Termux } "
        echo "              -{ Coded by } "
printf "$G"
        echo "      =============================="
        echo "      .___.                 ______,"
        echo "      |   |__ ______   ___  \_____ \ "
        echo "      |   \ \/ /\__ \ /   \    (__ <,"
        echo "      |   |\   / __ \| Y Y \ \      \ "
        echo "      |___| \_/ (____|__|_| /______ /"
        echo "                     \/    \/      \/ "
        echo "      ====== By ___ Cinderella ======"
        echo
printf "$C"
        echo "          [---] Join me on [---]"
        echo "[-] www.youtube.com/c/ivam3bycinderella [-]"
        echo "            [-] t.me/ivam3 [-]"
printf "$W"
        echo "
        "
}
#
function Set_Ak {
	banner
printf "$C [IbyC]$M Let's setting your access keys$C [IbyC]$W\n\n"
printf "\n$M [!]$W"
	while read -p "Type your Access Key >> " Ak1 && [ -z $Ak1 ]; do
		printf "$R O-ops!!$W \n"
	done
printf "$M [!]$W"
	while read -p "Confirm your Access Key >> " Ak2 && [ -z $Ak2 ]; do
		printf "$R O-ops!!$W \n"
	done
	Define_Ak
	}
#
function Define_Ak {
	if [ $Ak1 = $Ak2 ]; then
		Ak=$Ak1
		printf "$Ak" > $PREFIX/libexec/termux/tmp-Ak
		chmod +w $PREFIX/libexec/termux/.Ivam3
		base64 $PREFIX/libexec/termux/tmp-Ak > $PREFIX/libexec/termux/.Ivam3
		chmod -w $PREFIX/libexec/termux/.Ivam3
		rm $PREFIX/libexec/termux/tmp-Ak
		Set_Q
	else
		printf "\n$R [W] Yours Access keys are diferents$W |$G please try again$W
		\n"
		sleep 2
		Set_Ak
	fi
}
#
function Set_Q {
        banner
printf "$C [IbyC]$M Let's setting your security question$C [IbyC]$W\n\n"
printf "\n$M [!]$W Type your security question \n"
	while read -p " >> " Quiz1 && [ -z $Quiz1 ]; do
		printf "$R O-ops!!$W \n"
	done
printf "$M [!]$W Confirm your security question \n"
	while read -p " >> " Quiz2 && [ -z $Quiz2 ]; do
		printf "$R O-ops!!$W \n"
	done
	Define_Quiz
        }
#
function Define_Quiz {
        if [ $Quiz1 = $Quiz2 ]; then
                Quiz=$Quiz1
                printf "$Quiz" > $PREFIX/libexec/termux/tmp-Quiz
                chmod +w $PREFIX/libexec/termux/.Quiz
                base64 $PREFIX/libexec/termux/tmp-Quiz > $PREFIX/libexec/termux/.Quiz
                chmod -w $PREFIX/libexec/termux/.Quiz
                rm $PREFIX/libexec/termux/tmp-Quiz
		Set_Answer
        else
		printf "\n$R [W] Your security questions are diferents$W |$G please try again$W
                \n"
                sleep 2
                Set_Q
        fi
}
#
function Set_Answer {
        banner
printf "$C [IbyC]$M Let's setting your security answer$C [IbyC]$W\n\n"
printf "\n$M [!]$W Type your security answer \n"
	while read -p " >> " Anw1 && [ -z $Anw1 ]; do
		printf "$R O-ops!!$W \n"
	done
printf "$M [!]$W Confirm your security answer \n"
	while read -p " >> " Anw2 && [ -z $Anw2 ]; do
		printf "$R O-ops!!$W \n"
	done
	Define_Answer
        }
#
function Define_Answer {
        if [ $Anw1 = $Anw2 ]; then
                Anw=$Anw1
                printf "$Anw" > $PREFIX/libexec/termux/tmp-Anw
                chmod +w $PREFIX/libexec/termux/.Cinderella
                base64 $PREFIX/libexec/termux/tmp-Anw > $PREFIX/libexec/termux/.Cinderella
                chmod -w $PREFIX/libexec/termux/.Cinderella
                rm $PREFIX/libexec/termux/tmp-Anw
		Chao_chao
        else
		printf "\n$R [W] Your security answers are diferents$W |$G please try again$W
                \n"
                sleep 2
                Set_Answer
        fi
}
#
function Set_Banner {
	banner
printf "$C [IbyC]$M Let's setting your banners$C [IbyC]$W"
echo
	printf "$M             Choose an option"
        echo "
        "
        printf "$M [1]$W Setting login with default banners\n"
        printf "$M [2]$W Setting your own banners\n"
        until read -n 1 -p " >> " banner && [ $banner -lt 3 ]; do
		printf "$R O-ops!!$W \n"
	done
	case $banner in
                1)
                        echo "
                        "
                        printf "\n$C [IbyC]$M Thanks to use my YouTube channel banner's $C [IbyC]$W"
                        sleep 4
                        Set_Ak
                        ;;
                2)
			printf "\n$M [!]$W Set login banner \n"
                        while read -p " >> " LB && [ -z $LB ]; do
				printf "$R O-ops!!$W \n"
			done
			if [ -e $LB ]; then
				cat $LB > $PREFIX/libexec/banner/login-banner
			else
				printf "$R O-ops!!$W |$R Don't such file"
				sleep 2
				Set_Banner
			fi
			printf "\n$M [!]$W Set a principal banner \n"
			while read -p " >> " PB && [ -z $PB ]; do
                                printf "$R O-ops!!$W \n"
			done
				if [ -e $PB ]; then
					cat $PB > $PREFIX/libexec/banner/wall-banner
				else
					printf "$R O-ops!!$W |$R Don't such file"
					sleep 2
					Set_Banner
				fi
			Set_Ak
                        ;;
        esac
}
#
function Chao_chao {
	echo $(clear)
	printf "$M"
	source $PWD/banner/thanks
	sleep 1
        printf "\n\t$G C O N G R A T U L A T I O N S !!!$W\n\n"
	printf "$C [IbyC]$M Rmemeber, you can modify those banner later in$C [IbyC]$W\n\n"
	printf "$Y [!]$W Login banner$G \n >>$W $PREFIX/libexec/banner/login-banner\n"
        printf "$Y [!]$W Wallpaper banner$G \n >>$W $PREFIX/libexec/banner/wall-banner\n\n"
        printf "$C[IbyC]$M If you type wrong your access key 3 times a help menu will appear$C [IbyC]$W\n\n"
        printf "\t\t $G Press enter to restart Termux$W"
        read enter
        rm -rf $HOME/Termux_login;cd
        echo$(bash)
}
#
#			LET'S TO START
#
banner
printf "$Y[IbyC]$C Upgrading packages && Installing files\n"
echo
apt update && apt upgrade -y
#Setting files
cat $PREFIX/etc/bash.bashrc > $PREFIX/etc/bashito
	if [ -d $PREFIX/var/lib/postgresql ]; then
		sed -i "3a pg_ctl -D $PREFIX/var/lib/postgresql" $PREFIX/etc/bash.bashrc
		sed -i "4a clear" $PREFIX/etc/bash.bashrc
		sed -i "5a source $PREFIX/var/log/login-termux" $PREFIX/etc/bash.bashrc
	else
		sed -i "3a clear" $PREFIX/etc/bash.bashrc
		sed -i "4a source $PREFIX/var/log/login-termux" $PREFIX/etc/bash.bashrc
	fi
#
#Installing Scripts
if [ -d $HOME/Termux_login ]; then
	rm -rf $HOME/Termux_login
fi
cd ~/;git clone https://github.com/ivam3/Termux_login.git;cd Termux_login
cp $PWD/login-termux $PREFIX/var/log/
cp $PWD/colors $PREFIX/libexec/
cp -r $PWD/termux $PREFIX/libexec/
cp -r $PWD/banner $PREFIX/libexec/
Tak=$(base64 -d $PREFIX/libexec/termux/.Ivam3)
TQ=$(base64 -d $PREFIX/libexec/termux/.Quiz)
TA=$(base64 -d $PREFIX/libexec/termux/.Cinderella)

#
#Bringing permissions
chmod 711 $PREFIX/var/log/login-termux
chmod 711 $PREFIX/libexec/colors
chmod 711 -R $PREFIX/libexec/termux
chmod 711 -R $PREFIX/libexec/banner
printf "\n $Y               [!]$G DONE!!"
sleep 2
echo
Set_Banner



#				IbyC
