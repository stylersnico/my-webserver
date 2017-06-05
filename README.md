Configuration files for my Webserver
============================

## License
Configuration files for my webserver
Copyleft (C) Nicolas Simond - 2017

This script is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This script is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this.  If not, see <http://www.gnu.org/licenses/gpl.txt>

## About this

This is my collection of configuration files for my webserver.

You can take them to make your one without any configuration panel like Cpanel, Plesk or ISPConfig :)


## Designed for 
Debian 9 "Stretch"

## Installation

### Common tools

I use UFW as firewall, Haveged for more entropy and SSHFS for mounting my backup repository:

```bash
apt-get install -y ufw haveged curl git unzip  zip sshfs
```

### Web server

I use NGINX builded with this script: https://github.com/stylersnico/nginx-openssl-chacha-naxsi

```bash
cd /tmp && wget --no-check-certificate https://raw.githubusercontent.com/stylersnico/nginx-openssl-chacha/master/build.sh && sh build.sh`
```

### Database server

Here, I use MariaDB 10.2 from official repo:

```bash
apt-get install software-properties-common
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xF1656F24C74CD1D8
add-apt-repository 'deb [arch=amd64] http://ftp.igh.cnrs.fr/pub/mariadb/repo/10.2/debian stretch main'
apt-get install -y mariadb-server
```

### PHP

PHP 7.0 from Debian Stretch repository:

```bash
apt-get install -y php-common php-pear php-zip php7.0-cli php7.0-common php7.0-curl php7.0-dev php7.0-fpm php7.0-gd php7.0-imap php7.0-intl php7.0-json php7.0-mbstring php7.0-mysql php7.0-opcache php7.0-pspell php7.0-readline php7.0-recode php7.0-snmp php7.0-tidy php7.0-xml php7.0-zip
```

### NodeJS for Ghost

The NodeJS 4 LTS release from nodesource:

```bash
apt-get install -t jessie nodejs`
```

### Veeam Backup for Linux

For doing backup over SSHFS:

```bash
apt-get install -t noname veeam`
```

### Let's Encrypt 

```bash
cd /etc
git clone https://github.com/letsencrypt/letsencrypt
cd letsencrypt
./letsencrypt-auto --help
```
