#!/bin/sh

# window action key
gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier '<Super>'

# mouse & touchpad
gsettings set org.gnome.desktop.interface gtk-enable-primary-paste false
gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true

# titlebar actions
gsettings set org.gnome.desktop.wm.preferences action-double-click-titlebar 'toggle-maximize'
gsettings set org.gnome.desktop.wm.preferences action-middle-click-titlebar 'minimize'
gsettings set org.gnome.desktop.wm.preferences action-right-click-titlebar 'menu'

# titlebar buttons
gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'
