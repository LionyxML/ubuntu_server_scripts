#!/usr/bin/sh

clear
echo "---------------------------------"
echo "Installing for minimum X support!"
echo "---------------------------------"
echo ""
echo "Provide your sudo password when prompted."
echo "Answer yes to "
echo ""
echo "If you're not ready, Ctrl-C NOW!"
echo ""
echo "Feeling luck? wait 15 seconds..."

sleep 15

cd ~
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install xinit
sudo apt-get -y install x11-apps
sudo apt-get -y install openbox

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

echo "That's all folks! If no errors where thrown, this script is finished."
echo ""
echo "You can now issue 'startx' to start your X session."

