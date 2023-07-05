#! /bin/bash
# cd to downloads and prep 
cd ~/Downloads/
apt-get update
apt-get upgrade

###  download and set up ICAclient
wget https://downloads.citrix.com/21784/icaclient_23.3.0.32_amd64.deb?__gda__=exp=1680794497~acl=/*~hmac=34dd9e6bb936fef8599e193929bbf254334988b223a7f08bd8c73fbccfad2593

wget https://downloads.citrix.com/21784/ctxusb_23.3.0.32_amd64.deb?__gda__=exp=1680794497~acl=/*~hmac=34dd9e6bb936fef8599e193929bbf254334988b223a7f08bd8c73fbccfad2593

dpkg -i icaclient_23.3.0.32_amd64.deb

dpkg -i ctxusb_23.3.0.32_amd64.deb

apt update

echo "ICA Client and USB helper downloaded and installed. Consider rebooting"

#set up libidn11 and ica client

# wget http://se.archive.ubnutu.com/ubuntu/pool/main/libi/libidn/libidn11_1.33-3_amd64.deb

# dpkg -i libidn11_1.33-3_amd64.deb
# dpkg -i icaclient_22.3.0.24_amd64.deb

# may want to download usb clinet too
