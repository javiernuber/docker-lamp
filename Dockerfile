#######################################################################
#
# Contributors:
#   Fco Javier Núñez Berrocoso
#
#######################################################################

FROM ubuntu:14.04
MAINTAINER Fco Javier Núñez Berrocoso <javiernuber@gmail.com>

env    DEBIAN_FRONTEND noninteractive
# -----------------------------
# Pull in scripts and resources
# -----------------------------
ADD scripts /home/scripts
RUN chmod 755 /home/scripts/*.sh

# Apache
ADD etc/apache2/sites-available /etc/apache2/sites-available

# --------------------
# Install Requirements
# --------------------
RUN /home/scripts/install-requeriments.sh

# ------
# Config
# ------
ADD etc/supervisor/conf.d/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
RUN /home/scripts/config-apache.sh
RUN /home/scripts/config-php.sh

# -----
# Ports
# -----
EXPOSE 80

CMD ["/home/scripts/boot.sh"]
