# Tested on
#   CentOS7 Everything version
#   Virtualbox 5.2.6
# Just run this script on root permission hoho
dhclient
yum groupinstall -y “X Window System” “GNOME Desktop”
systemctl set-default graphical.target
reboot
