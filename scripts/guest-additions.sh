GUEST_VERSION=5.0.12

yum install -qy wget

#yum install -qy kernel-devel-3.10.0-229.14.1.el7.x86_64
wget -q http://download.virtualbox.org/virtualbox/${GUEST_VERSION}/VBoxGuestAdditions_${GUEST_VERSION}.iso
sudo mkdir /media/VBoxGuestAdditions
sudo mount -o loop,ro VBoxGuestAdditions_${GUEST_VERSION}.iso /media/VBoxGuestAdditions
sudo sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run
rm VBoxGuestAdditions_${GUEST_VERSION}.iso
sudo umount /media/VBoxGuestAdditions/
sudo rmdir /media/VBoxGuestAdditions/
