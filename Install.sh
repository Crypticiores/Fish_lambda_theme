 #!/bin/sh

echo "Fish is required to use this repository"
read -p "Would you like to install Fish: y/n" fish
if [[ "$fish" == "y" || "$fish" == "Y" ]]; then
    echo "Installing Fish: Installing..."
    sudo apt-add-repository ppa:fish-shell/release-3
	sudo apt update
	sudo apt-get install fish  -y 
elif [[ "$fish" == "n" || "$fish" == "N" ]]; then
    echo "Not installing Fish: Skipping..."
fi

echo "Git is required to use this repository"
read -p "Would you like to install Git: y/n" git
if [[ "$git" == "y" || "$git" == "Y" ]]; then
    echo "Installing Git: Installing..."
    sudo apt-get install git -y
elif [[ "$git" == "n" || "$git" == "N" ]]; then
    echo "Not installing Git: Skipping..."
fi

read -p "Would you like to set Fish to the default shell: y/n" default
if [[ "$default" == "y" || "$default" == "Y" ]]; then
    echo "Setting Fish to the default shell..."
    chsh -s $(which fish)  
elif [[ "$default" == "n" || "$default" == "N" ]]; then
    echo "Not setting Fish to the default shell: Skipping..."
fi

fish  

read -p "set the default greeting" greeting
set -U fish_greeting $greeting

echo "OMF (Oh My Fish) is required to use this repository"
read -p "Would you like to install OMF: y/n" omf
if [[ "$omf" == "y" || "$omf" == "Y" ]]; then
    echo "Installing OMF: Installing..."
    curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish  
elif [[ "$omf" == "n" || "$omf" == "N" ]]; then
    echo "Not installing OMF: Skipping..."
fi

cd ~/.local/share/omf/themes 

echo "installing theme..."
git clone https://github.com/Crypticiores/lambda_custom.git

echo "setting theme..."
omf theme lambda_custom  

echo "cleaning up..."
echo "removing repository..."
sudo rm -rf .git
echo "removing installer..."
sudo rm -rf install.sh

echo "Thank you for installing Lambda Custom"

echo "<bash> will exit the fish shell"