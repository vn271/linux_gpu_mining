wget kernel.ubuntu.com/~kernel-ppa/mainline/v4.7.2/linux-headers-4.7.2-040702_4.7.2-040702.201608201334_all.deb
wget kernel.ubuntu.com/~kernel-ppa/mainline/v4.7.2/linux-headers-4.7.2-040702-generic_4.7.2-040702.201608201334_amd64.deb
wget kernel.ubuntu.com/~kernel-ppa/mainline/v4.7.2/linux-image-4.7.2-040702-generic_4.7.2-040702.201608201334_amd64.deb
sudo dpkg -i linux-*4.7.2*.deb
sudo apt install build-essential linux-headers-amd64
sudo modprobe btusb
sudo service bluetooth stop
sudo apt-get install build-essential linux-headers-$(uname -r)
sudo apt autoremove
sudo apt install git
git clone https://github.com/neurobin/MT7630E.git
cd MT7630E/
chmod +x install test uninstall bpatch
./install
