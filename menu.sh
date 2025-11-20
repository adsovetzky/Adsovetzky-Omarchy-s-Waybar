#!/bin/bash

# List waybar folders
waybars=($(ls -d waybar-*/ | sort))

# Check if any waybars found
if [ ${#waybars[@]} -eq 0 ]; then
    echo "No waybar configurations found in the current directory."
    exit 1
fi

# Display menu
echo "Choose a waybar version:"
for i in "${!waybars[@]}"; do
    echo "$((i+1)). ${waybars[i]%/}"
done

# Get user choice
read -p "Enter choice (1-${#waybars[@]}): " choice

# Validate choice
if [[ $choice =~ ^[0-9]+$ ]] && [ $choice -ge 1 ] && [ $choice -le ${#waybars[@]} ]; then
    selected=${waybars[$((choice-1))]%/*}
    echo "Selected: $selected"

    # Backup current config
    echo "Backing up current waybar config..."
    # mkdir -p ~/.config/waybar/backup-waybar
    # [ -d ~/.config/waybar ] && mv ~/.config/waybar/* ~/.config/waybar/backup-waybar/ 2>/dev/null || true

    # Copy new config
    echo "Installing $selected config..."
    cp -r ./$selected/config.jsonc ~/.config/waybar/
    cp -r ./$selected/style.css ~/.config/waybar/

    # Restart waybar
    echo "Restarting waybar..."
    omarchy-restart-waybar

    echo "Waybar configuration updated to $selected!"
else
    echo "Invalid choice. Please run the script again."
fi