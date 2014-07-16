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
ADD scripts /scripts
RUN chmod 755 /scripts/*.sh

# Apache
ADD etc/apache2/sites-available /etc/apache2/sites-available

# --------------------
# Install Requirements
# --------------------
RUN /scripts/install-requeriments.sh

# ------
# Config
# ------
RUN /scripts/config-apache.sh
RUN /scripts/config-php.sh

# -----
# Ports
# -----
EXPOSE 80

#CMD ["/scripts/boot.sh"]
