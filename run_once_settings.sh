#!/bin/sh

gsettings set org.gnome.desktop.calendar show-weekdate true
gsettings set org.gnome.desktop.datetime automatic-timezone true
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('xkb', 'fr+bepo_afnor')]"
gsettings set org.gnome.desktop.interface clock-show-weekday true
gsettings set org.gnome.desktop.privacy old-files-age 3
gsettings set org.gnome.desktop.privacy remove-old-temp-files true
gsettings set org.gnome.desktop.privacy remove-old-trash-files true
gsettings set org.gnome.desktop.session idle-delay 0
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
gsettings set org.gnome.settings-daemon.plugins.color night-light-temperature 3700
gsettings set org.gnome.settings-daemon.plugins.power power-button-action 'interactive'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
localectl set-keymap fr-bepo
localectl set-x11-keymap fr,us '' bepo_afnor,

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
