cp -r themes/ /boot/grub/
cp etc/default/grub /etc/default/grub
grub-mkconfig -o /boot/grub/grub.cfg
systemctl enable bluetooth
systemctl enable NetworkManager
