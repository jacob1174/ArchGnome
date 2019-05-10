#!/bin/bash
set -e
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Jacob Lutz
# Website 	: 	jlutz152@gmail.com
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################


package="ttf-font-awesome"


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

package="noto-fonts"


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

package="ttf-roboto"


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


package="arc-faenza-icon-theme"

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

package="la-capitaine-icon-theme"

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

package="papirus-icon-theme-git"


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




package="paper-icon-theme-git"


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

package="breeze-snow-cursor-theme"


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


echo"########################################"
echo"########        Conky Themes   #########"
echo"########################################"



# if there is already a folder in tmp, delete or else do nothing
[ -d /tmp/aureola ] && rm -rf "/tmp/aureola" || echo ""
# download the github in folder /tmp/aureola

echo "################################################################"
echo "Checking if git is installed"
echo "Install git for an easy installation"


	# G I T

	# check if git is installed
	if which git > /dev/null; then
		echo "git was installed. Proceding..."

		else

		echo "################################################################"
		echo "installing git for this script to work"
		echo "################################################################"

	  	sudo pacman -S git --noconfirm
		  	
	fi




echo "################################################################"
echo "Downloading the files from github to tmp directory"

rm -rf /tmp/aureola

git clone https://github.com/erikdubois/Aureola /tmp/aureola

# if there is already a folder in tmp, delete or else do nothing
[ -d ~/.aureola ] && rm -rf ~/.aureola 
mv -f /tmp/aureola ~/.aureola

rm -rf /tmp/aureola

echo "################################################################"
echo "###################    aureola installed  ######################"
echo "################################################################"

echo "################################################################"
echo "###################    Sardi Icons Installing   ################"
echo "################################################################"

# cleaning tmp
[ -d /tmp/sardi ] && rm -rf /tmp/sardi

# if there is no hidden folder then make one
[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"

wget -O /tmp/sardi.tar.gz "https://sourceforge.net/projects/sardi/files/latest/download?source=files"
mkdir /tmp/sardi
tar -zxf /tmp/sardi.tar.gz -C /tmp/sardi
rm /tmp/sardi.tar.gz
cp -rf /tmp/sardi/* ~/.icons/

# cleaning tmp
[ -d /tmp/sardi ] && rm -rf /tmp/sardi



echo "################################################################"
echo "###################    Sardi icons done   ######################"
echo "################################################################"


echo "################################################################"
echo "###################  Installing Plank themes  ##################"
echo "################################################################"


# if there is a folder, delete it
[ -d /tmp/Plank-Themes ] && rm -rf /tmp/Sardi-Extra

#download from github
git clone https://github.com/erikdubois/Plank-Themes /tmp/Plank-Themes

#remove some of the files
find /tmp/Plank-Themes -maxdepth 1 -type f -exec rm -rf '{}' \;

# if there is no hidden folder then make one
[ -d $HOME"/.local/share/plank" ] || mkdir -p $HOME"/.local/share/plank"

# if there is no hidden folder then make one
[ -d $HOME"/.local/share/plank/themes" ] || mkdir -p $HOME"/.local/share/plank/themes"

# copy the files
cp -r /tmp/Plank-Themes/* ~/.local/share/plank/themes/

# remove files from tmp
rm -rf /tmp/Plank-Themes

echo "################################################################"
echo "###################  plank themes installed   ##################"
echo "################################################################"


echo "################################################################"
echo "#############  eye candy software  installed   #################"
echo "################################################################"
