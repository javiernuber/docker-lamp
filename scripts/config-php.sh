#!/bin/bash

#----------------
# Configure PHP
#----------------

sed -i 's/memory_limit = .*/memory_limit = 256M/' /etc/php5/apache2/php.ini
sed -i 's/error_reporting = .*/error_reporting = E_ALL/' /etc/php5/apache2/php.ini
sed -i 's/display_errors = .*/display_errors = On/' /etc/php5/apache2/php.ini
sed -i 's/display_errors = .*/display_errors = On/' /etc/php5/cli/php.ini