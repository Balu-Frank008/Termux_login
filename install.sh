#!/data/data/com.termux/files/usr/bin/bash
#Coded by Ivam3 on 02 Agust 2018
#
#TRAPPING Ctrl+C
                trap ctrl_c 2
#
function ctrl_c() {
        printf "        $red O-ops!!$reset \n"
        }
#Define colors
                R='\033[1;31m'
                G='\033[1;32m'
                Y='\033[1;33m'
                B='\033[1;34m'
                M='\033[1;35m'
                C='\033[1;36m'
                W='\033[0m'
#
#Variable

		PWD=$(pwd)
		Tak=$(base64 -d $PREFIX/libexec/termux/.Ivam3)
		TQ=$(base64 -d $PREFIX/libexec/termux/.Quiz)
		TA=$(base64 -d $PREFIX/libexec/termux/.Cinderella)
##
function banner {
	echo
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
printf "$C			[!]$W Let's setting your access keys"
echo
while read -p "Type your Access Key >> " Ak1 && [ -z $Ak1 ]: do
	printf "$R O-ops!!$W \n"
                done
echo "
"
while read -p "Confirm your Access Key >> " Ak2 && [ -z $Ak2 ]: do
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
		base64 $PWD/tmp-Ak > $PREFIX/libexec/termux/.Ivam3
		chmod -w $PREFIX/libexec/termux/.Ivam3
		rm $PREFIX/libexec/termux/tmp-Ak
		Set_Q
	else
		printf "$R Your Access keys are diferents$W |$G please try again$W
		\n"
		sleep 2
		Set_Ak
	fi
}
#
function Set_Q {
        banner
printf "$C                      [!]$W Let's setting your security question"
echo
while read -p "Type your security question >> " Quiz1 && [ -z $Quiz1 ]: do
        printf "$R O-ops!!$W \n"
                done
echo "
"
while read -p "Confirm your security question >> " Quiz2 && [ -z $Quiz2 ]: do
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
		printf "$R Your security questions are diferents$W |$G please try again$W
                \n"
                sleep 2
                Set_Q
        fi
}
#
function Set_Answer {
        banner
printf "$C                      [!]$W Let's setting your security answer"
echo
while read -p "Type your security answer >> " Anw1 && [ -z $Anw1 ]: do
        printf "$R O-ops!!$W \n"
                done
echo "
"
while read -p "Confirm your security answer >> " Anw2 && [ -z $Anw2 ]: do
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
		Testing_Settings
        else
		printf "$R Your security answers are diferents$W |$G please try again$W
                \n"
                sleep 2
                Set_Answer
        fi
}
#
function Testing_Settings {
	banner
printf "$C			 [!]$W Testing your logging settings . . ."
sleep 1
printf "				$G It take a while$W"
sleep 3
	if [ $Tak = $Ak ] && [ $TQ = $Quiz ] && [ $TA = $Anw ]; then
		echo$(cd ../;rm -rf Termux_login;cd)
		printf "$G C O N G R A T U L A T I O N S !!!$W"
		sleep 3
		echo$(bash)
	else
		printf "$R [w] O-ops !!$W |$R SOMETHING WAS WRONG$W"
		sleep 2
		echo "
		"
	while read -p "[!] Do you wanna try it once again ? (y/n) \n >> " yesorno && [ -z $yesorno ]; do
			printf "$R O-ops!!$W \n"
		done
			if [ $yesorno = 'y' -o $yesorno = 'Y' ] ; then
				Set_Ak
			fi
			if [ $yesorno = 'n' -o $yesorno = 'N' ] ; then
				rm $PREFIX/var/log/login-termux
				rm $PREFIX/libexec/colors
				rm -r $PREFIX/libexec/termux
				rm -r $PREFIX/libexec/banner
				cat $PREFIX/etc/bashito > $PREFIX/etc/bash.bashrc
				rm $PREFIX/etc/bashito
				source $PWD/banner/thanks
			fi
		fi
	}
#
function Set_Banner {
	banner
printf "$C                      [!]$W Let's setting your banners"
echo
while read -p "Choose an option >> " banner && [ -z $banner ]; do
        printf "$R O-ops!!$W \n"
        echo "
        "
        printf "$G [1]$W Setting login with default banners ?"
        printf "$G [2]$W Setting your own banners ?"
        echo
        read -p "$G >> $W" banner
done
        case $banner in
                1)
                        echo "
                        "
                        printf "$C                      Thanks to use my YouTube channel banner's$W"
                        sleep 2
                        Set_Ak
                        ;;
                2)
                        while read -p "Set login banner >> " LB && [ -z $LB ]; do
				printf "$R O-ops!!$W \n"
			done
			echo "
			"
			while read -p "Set termux banner >> " TB && [ -z $TB ]; do
                                printf "$R O-ops!!$W \n"
			done
				if [ -e $LB ] && [ -e $TB ]; then
					cat $LB > $PREFIX/libexec/banner/login-banner
					cat $TB > $PREFIX/libexec/banner/wall-banner
				else
					printf "$R O-ops!!$W |$R Don't such file"
					sleep 2
					Set_Banner
				fi
                        ;;
        esac
#
#Setting files
cat $PREFIX/etc/bash.bashrc > $PREFIX/etc/bashito
sed -i "4a source $PREFIX/var/log/login-termux" $PREFIX/etc/bash.bashrc

#
#Installing Scripts
cp $PWD/login-termux $PREFIX/var/log/
cp $PWD/colors $PREFIX/libexec/
cp -r $PWD/termux $PREFIX/libexec/
cp -r $PWD/banner $PREFIX/libexec/

#
#Bringing permissions
chmod 711 $PREFIX/var/log/login-termux
chmod 711 $PREFIX/libexec/colors
chmod 511 -R $PREFIX/libexec/termux
chmod 511 -R $PREFIX/libexec/banner
Set_Banner
#
				#@IbyC
