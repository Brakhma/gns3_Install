#GNS3
sudo add-apt-repository ppa:gns3/ppa -y
sudo apt-get update -y
sudo apt-get install gns3-gui -y
#dynamips
sudo apt install libc6-dev-i386 -y
sudo apt install libelf-dev libpcap0.8-dev:i386 -y
sudo apt install git cmake  -y
git clone https://github.com/GNS3/dynamips.git
cd dynamips
mkdir build
cd build
cmake .. -DDYNAMIPS_ARCH=x86
make
sudo make install
#KVM
sudo apt install qemu-kvm libvirt-bin bridge-utils virt-manager -y
sudo chown root:${USER} /dev/kvm
sudo usermod -aG kvm ${USER}
#sudo adduser ${USER} libvirtd
#tightvnc
sudo apt-get install xtightvncviewer -y
#docker
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
sudo usermod -aG docker ${USER}
#tap interface
sudo apt install uml-utilities -y
sudo modprobe tun
#wireshark
sudo apt install wireshark -y
sudo usermod -aG wireshark ${USER}

sudo apt install virtualbox
