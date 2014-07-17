#!/bin/bash

# --------------------
# Install services
# --------------------

apt-get update
echo "mysql-server mysql-server/root_password password 1234" | debconf-set-selections
echo "mysql-server mysql-server/root_password_again password 1234" | debconf-set-selections
apt-get -y --force-yes install supervisor mysql-server-5.5 php5-mysql libsqlite3-dev apache2 php5 php5-dev build-essential php-pear

# -----------
# Install Vim
# -----------
apt-get install -y vim

# ----
# CURL
# ----
apt-get -y install curl

# ---
# Git
# ---
apt-get -y install git-core

# ----------------
# Install Composer
# ----------------
curl -s https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
