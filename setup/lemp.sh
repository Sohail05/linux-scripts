#Generic

apt-get update
apt-get -y upgrade
export DEBIAN_FRONTEND="noninteractive"

apt-get install -y debconf-utils

#MySQL
apt-get install -y mysql-server

#sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password $1"
#sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $1"

 mysql_secure_installation

#nginx
 sudo apt-get install -y nginx

#php
 apt-get install -y php php-fpm php-mysql php-curl php-mbstring php-xml

#git
 apt-get install -y git

#ssh-key
 ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa

#nodejs
 curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
 sudo apt-get install -y nodejs

#composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '55d6ead61b29c7bdee5cccfb50076874187bd9f21f65d8991d46ec5cc90518f447387fb9f76ebae1fbbacf329e583e30') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php --filename=composer --install-dir=bin
php -r "unlink('composer-setup.php');"
