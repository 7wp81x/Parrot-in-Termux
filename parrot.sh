#!/bin/bash
#Mar 27, 2021 22:02:23 GMT+08:00
#author p1r4t3
#don't copy my script make your own script kiddie
clear
sleep 1
b='\033[34;1m' #blue
g='\033[32;1m' #g3en
p='\033[35;1m' #purple
c='\033[36;1m' #cyan
r='\033[31;1m' #red
w='\033[37;1m' #white
y='\033[33;1m' #yellow
o='\033[1;38;5;208m' #Orange
printf $g
figlet -f slant "Parrot Os"
echo $c"    Creator "":"$g" P1r4t3"
echo $c"    Version "":"$g" v.1"
echo $c"    Youtube "":"$g" Mr.P1r4t3"
     echo $c "   __________________________________"
     echo $p "   1."$g "[✓]"$c "Parrot os Theme."
     echo $p "   2."$g "[✓]"$c "Remove Theme."
     echo $p "   0."$g "[*]"$c "Exit."
     echo $c "   ——————————————————————————————————"
  while true; do
    printf $g
    read -p "    Select Option: " yn
    case $yn in

        0)
     echo "  Exiting..."
     sleep 3
     clear
     bash
     exit;
     break;;

       1) clear
printf $c
     figlet -f slant "Parrot"
     echo $g"         Created By Mr.P1r4t3"
     sleep 4
     cd $PREFIX/etc
     mv motd $HOME/Parrot-in-Termux/main
     cp $HOME/Parrot-in-Termux/main/parrot $PREFIX/etc
     cd $PREFIX/etc
     echo $b"["$g"*"$b"]"$c" Installing Parrot os theme."
     sleep 3
     echo $b"["$r"*"$b"]"$c" Please wait..."
     mv bash.bashrc bash.bashrc.bak
     mv parrot bash.bashrc
     echo $b"["$g"✓"$b"]"$c" Parrot os theme Successfuly installed."
     sleep 4
     echo $b"["$g"✓"$b"]"$g" Just type 'bash' to check theme."
     break;;

2) clear
printf $c
     figlet -f slant "Parrot"
     echo $g"         Created By Mr.P1r4t3"
     sleep 4
     echo $b"["$r"*"$b"]"$r" Warning!!!."
     echo $b"["$g"*"$b"]"$r" Do not leave or exit.."
     cd $PREFIX/etc
     mv $HOME/Parrot-in-Termux/main/motd $PREFIX/etc
     cp $HOME/Parrot-in-Termux/main/parrot $PREFIX/etc
     cd $PREFIX/etc
     echo $b"["$g"*"$b"]"$c" Removing Parrot os theme."
     sleep 3
     echo $b"["$r"*"$b"]"$c" Please wait..."
     rm bash.bashrc
     mv bash.bashrc.bak bash.bashrc
     echo $b"["$g"✓"$b"]"$c" Parrot os theme Successfuly removed."
     sleep 4
     clear
     bash
break;;

     *)
echo $c"    Please select option."
    esac
done
