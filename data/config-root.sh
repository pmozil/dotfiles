cp -r etc/default/grub /etc/default/grub
cp -r etc/portage/* /etc/portage
cp -r themes/ /boot/grub/
grub-mkconfig -o /boot/grub/grub.cfg
