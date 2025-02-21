
# Fish_lambda_theme

## Installation Linux

Install Fish 
```shell
sudo apt-get install fish
```

Install Git
```shell
sudo apt-get install git
```

Sets the default shell to fish (optional)
```shell
chsh -s $(which fish)  
```

Jumps into the Fish shell 
```shell
fish  
```

Sets the greeting to nothing (optional)
```shell
set -U fish_greeting
```

Installs omf (Oh My Fish)
```shell
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish  
```

Enters local directory 
```shell
cd ~/.local/share/omf/themes  
```

Install theme
```shell
git clone https://github.com/Crypticiores/Fish_lambda_theme.git
```

Sets the theme 
```shell
omf theme Fish_lambda_theme
```

## Installation Macos

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install Fish 
```shell
brew install fish 
```

Install Git
```shell
brew install git 
```

Setting the default shell to fish (optional)
1. check the fish path with `which fish`. In the examples below it was located at: `/opt/homebrew/bin/fish`. On older Macs the path might differ.
```shell
which fish
```
2. `chsh -s /opt/homebrew/bin/fish`
```shell
`chsh -s <your path>
```

Jumps into the Fish shell 
```shell
fish  
```

Sets the greeting to nothing (optional)
```shell
set -U fish_greeting
```

Installs omf (Oh My Fish)
```shell
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish  
```

Enters local directory 
```shell
cd ~/.local/share/omf/themes  
```

Install theme
```shell
git clone https://github.com/Crypticiores/Fish_lambda_theme.git
```

Sets the theme 
```shell
omf theme Fish_lambda_theme
```
