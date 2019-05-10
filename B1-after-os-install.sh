#!/bin/bash
set -e
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Jacob Lutz	
# email 	: 	jlutz152
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo "################################################################"
echo "####             Updating to the latest versions            ####"
echo "################################################################"

sudo pacman -Syyu

echo "################################################################"
echo "####             Your system is now up to date              ####"
echo "################################################################"


echo "################################################################"
echo "####             Installing reflector if needed             ####"
echo "################################################################"


# installing refector to test wich servers are fastest
sudo pacman -S reflector --needed --noconfirm


echo "################################################################"
echo "####        finding fastest servers be patient in US         ###"
echo "################################################################"

sudo reflector -c "United States" -f 12 -l 10 -n 12 --verbose --save /etc/pacman.d/mirrolist


echo "################################################################"
echo "####     fastest arch servers in US saved                   ####"
echo "################################################################"


cat /etc/pacman.d/mirrorlist


echo "################################################################"
echo "####               Checking for possible updates            ####"
echo "################################################################"

sudo pacman -Syu --noconfirm


echo "################################################################"
echo "####             Your system is now up to date              ####"
echo "################################################################"



echo "################################################################"
echo "#######Installing Xorg ###### Installing Xorg ##################"
echo "################################################################"

sudo pacman -S xorg --noconfirm

echo "################################################################"
echo "############# Xorg has been installed  #########################"
echo "################################################################"

echo "################################################################"
echo "#######   Installing AMD Video Drivers        ##################"
echo "################################################################"

sudo pacman -S xf86-video-amdgpu --noconfirm

echo "################################################################"
echo "######## AMD drivers has been installed ########################"
echo "################################################################"

echo "################################################################"
echo "#######I                      Installing Gnome  and  Display Manager             ###############"
echo "################################################################"

sudo pacman -S gdm --noconfirm 
sudo pacman -S gnome --noconfirm
sudo pacman -S gnome-extra --noconfirm
sudo systemctl enable gdm.service

echo "################################################################"
echo "############# Gnome has been installed #######################"
echo "###################    and   ###################################"
echo "############# Gnome has been enabled   #######################"
echo "################################################################"

echo "################################################################"
echo "#########        Install Sound Software         ################"
echo "################################################################"

sudo pacman -S pulseaudio pulseaudio-alsa pavucontrol  --noconfirm --needed
sudo pacman -S alsa-utils alsa-plugins alsa-lib alsa-firmware --noconfirm --needed
sudo pacman -S gst-plugins-good gst-plugins-bad gst-plugins-base gst-plugins-ugly  gstreamer  --noconfirm --needed

echo "################################################################"
echo "#########      Sound Software installed         ################"
echo "################################################################"



echo "################################################################"
echo "########   Installing Network Management Software   ############"
echo "################################################################"

sudo pacman -S networkmanager --noconfirm
sudo pacman -S network-manager-applet --noconfirm
sudo pacman -S wpa_supplicant --noconfirm
sudo pacman -S dhclient --noconfirm
sudo pacman -S dialog --noconfirm

sudo systemctl enable NetworkManager.service
sudo systemctl start NetworkManager.service



echo "################################################################"
echo "#########   Network Management Software installed  #############"
echo "#########################  and  ################################"
echo "#########         Networkmanger is enabled         #############"
echo "################################################################"




echo "################################################################"
echo "#########   Installing Basic desktop components ################"
echo "################################################################"

echo "################################################################"
echo "#########     Installing from Arch repository   ################"
echo "################################################################"

sudo pacman -S --noconfirm  archey3 baobab bleachbit catfish conky curl
sudo pacman -S --noconfirm  dconf-editor dmidecode 
sudo pacman -S --noconfirm  filezilla firefox
sudo pacman -S --noconfirm  galculator git glances 
sudo pacman -S --noconfirm  gparted gpick  gnome-disk-utility
sudo pacman -S --noconfirm gnome-font-viewer gnome-screenshot gnome-system-monitor gnome-terminal gnome-tweak-tool 
sudo pacman -S --noconfirm  hardinfo hddtemp htop 
sudo pacman -S --noconfirm  lm_sensors lsb-release lxterminal meld openvpn
sudo pacman -S --noconfirm  net-tools notify-osd plank pcmanfm polkit-gnome 
sudo pacman -S --noconfirm  ristretto sane screenfetch scrot 
sudo pacman -S --noconfirm  simple-scan smplayer sysstat 
sudo pacman -S --noconfirm  terminator transmission-cli transmission-gtk tumbler
sudo pacman -S --noconfirm  variety vlc vnstat wget unclutter 

sudo systemctl enable vnstat
sudo systemctl start vnstat

###############################################################################################

# installation of zippers and unzippers
sudo pacman -S --noconfirm  unace unrar zip unzip sharutils  uudeview  arj cabextract file-roller

###############################################################################################

package="inxi"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed

	if pacman -Qi yay &> /dev/null; then
		
		echo "Installing with yay"
		yay -S --noconfirm $package
		 	
		  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi

echo "################################################################"
echo "gksu"
echo "################################################################"


package="gksu"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed

	if pacman -Qi yay &> /dev/null; then
		
		echo "Installing with yay"
		yay -S --noconfirm $package
		 	
		  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi

echo "################################################################"
echo "######## Basic desktop components have been installed  #########"
echo "################################################################"

echo "################################################################"
echo "###        Installing extra desktop components     #############"
echo "################################################################"


echo "################################################################"
echo "## Installing extra desktop components from Arch repository  ###"
echo "################################################################"

sudo pacman -S atom --noconfirm
sudo pacman -S audacious --noconfirm
sudo pacman -S libreoffice-fresh --noconfirm

echo "################################################################"
echo "###   Installing extra software from AUR repository    #########"
echo "################################################################"

package="aarchup"
command="aarchup"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed

	if pacman -Qi yay &> /dev/null; then
		
		echo "Installing with yay"
		yay -S --noconfirm $package

	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi

package="google-chrome"
command="google-chrome"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed

	if pacman -Qi yay &> /dev/null; then
		
		echo "Installing with yay"
		yay -S --noconfirm $package
			  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi

package="google-earth"
command="google-earth"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed

	if pacman -Qi yay &> /dev/null; then
		
		echo "Installing with yay"
		yay -S --noconfirm $package
			  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi

# dependency
package="python2-pyparted"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed

	if pacman -Qi yay &> /dev/null; then
		
		echo "Installing with yay"
		yay -S --noconfirm $package
			  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi


package="mintstick-git"
command="mintstick"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed
	if pacman -Qi yay &> /dev/null; then

		echo "Installing with yay"
		yay -S --noconfirm $package
		  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi

package="neofetch"
command="neofetch"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed
	if pacman -Qi yay &> /dev/null; then

		echo "Installing with yay"
		yay -S --noconfirm $package
		  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi

package="sublime-text-dev"
command="subl3"
#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed
	if pacman -Qi yay &> /dev/null; then

		echo "Installing with yay"
		yay -S --noconfirm $package
		  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi

echo "################################################################"
echo "######## Extra desktop components have been installed  #########"
echo "################################################################"

	
echo "################################################################"
echo "######## Please reboot and sign in and setup network   #########"
echo "################################################################"