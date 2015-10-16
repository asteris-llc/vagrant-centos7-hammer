yum install -y wget

wget http://download.virtualbox.org/virtualbox/5.0.6/VBoxGuestAdditions_5.0.6.iso
sudo mkdir /media/VBoxGuestAdditions
sudo mount -o loop,ro VBoxGuestAdditions_5.0.6.iso /media/VBoxGuestAdditions
sudo sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run
rm VBoxGuestAdditions_5.0.6.iso
sudo umount /media/VBoxGuestAdditions/
sudo rmdir /media/VBoxGuestAdditions/
