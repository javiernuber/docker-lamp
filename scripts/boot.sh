#!/bin/bash

# Start Apache
exec /etc/init.d/apache2 start

# Start Mysql
exec /etc/init.d/mysql start
