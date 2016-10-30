apt-get install python-software-properties
add-apt-repository ppa:thefrontiergroup/vsftpd
apt-get update
apt-get install vsftpd
useradd -d /var/www/ ftp_user
usermod -aG www-data ftp_user
ufw allow ftp
service vsftpd restart
passwd ftp_user
