#!/bin/bash

#----------------
# Configure Apache
#----------------

# Add ServerName to httpd.conf
echo "ServerName localhost" | sudo tee -a /etc/apache2/apache2.conf > /dev/null

# Enable mod_rewrite
a2enmod rewrite
# Sitios virtuales
rm -rf /etc/apache2/sites-enabled/*
a2ensite default.conf 