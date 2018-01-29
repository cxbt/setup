dhclient
yum groupinstall -y “X Window System” “GNOME Desktop”
systemctl set-default graphical.target
reboot
