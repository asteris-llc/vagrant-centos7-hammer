yum groupinstall -y 'Development Tools'

# install go and hammer
yum install -y golang hg git
export GOPATH=/home/vagrant/go
mkdir $GOPATH
echo "export GOPATH=$GOPATH" >> /etc/profile.d/gopath.sh
echo 'export PATH=$PATH:$GOPATH/bin' >> /etc/profile.d/gopath.sh

go get -u -v github.com/asteris-llc/hammer

chown -R vagrant:vagrant $GOPATH

# install ruby and FPM
yum install -y ruby ruby-devel

gem install fpm
