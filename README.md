# Adso's Omarchy's waybar

## Preview

* great inspiration from <a herf ="https://github.com/abhijeet-swami/omarchy-forest-green-theme/tree/main">forest green theme</a>!

<img src="image.png">
<img src="image2.png">
<img src="image3.png">
<img src="image4.png">

## Install

This will back up your current Waybar configuration files and add the clone one, copy all of this command, paste it into ur terminal and everything will be fine.

```sh
# Clone the Waybar config from this repo
git clone https://github.com/adsovetzky/Adsovetzky-Omarchy-s-Waybar
cd Adsovetzky-Omarchy-s-Waybar

# Backup your current config and style into "backup" folder
mkdir -p ~/.config/waybar/backup
cp -r ~/.config/waybar/config.jsonc ~/.config/waybar/backup/config.jsonc.bak
cp -r ~/.config/waybar/style.css ~/.config/waybar/backup/style.css.bak

# Replace with the new Waybar configuration and style from this repo
cp -r ./config.jsonc ~/.config/waybar/config.jsonc
cp -r ./style.css ~/.config/waybar/style.css

# Delete the clone
cd ..
rm -rf Adsovetzky-Omarchy-s-Waybar

#and now, enjoy "my" new waybar!

omarchy-restart-waybar
```
