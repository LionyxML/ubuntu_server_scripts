#!/usr/bin/sh

clear
echo "---------------------------------"
echo "Installing for minimum X support!"
echo "---------------------------------"
echo ""
echo "Please run this script with sudo inside your home dir"
echo ""
echo "If you're not ready, Ctrl-C NOW!"
echo ""
echo "Feeling luck? wait 15 seconds..."

sleep 15

apt-get update
apt-get upgrade
apt-get install xinit
apt-get install x11-apps
apt-get install openbox

echo "Creating .xinitrc..."
echo "xterm&" > .xinitrc
echo "xclock&" >> .xinitrc
echo "exec openbox" >> .xinitrc

echo "Creating .Xdefaults..."
echo "XTerm*faceSize: 16" > .Xdefaults
echo "XTerm*colorMode: on" >> .Xdefaults
echo "XTerm*dynamicColors: on" >> .Xdefaults
echo "XTerm*colorMode: on" >> .Xdefaults
echo "XTerm*utf8: 1" >> .Xdefaults
echo "XTerm*background: black" >> .Xdefaults
echo "XTerm*foreground: white" >> .Xdefaults

echo "If it is all ok, run 'startx'"

