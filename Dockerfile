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

# NOTE: change this key to your own
RUN mkdir /root/.ssh
RUN mkdir /var/run/sshd
# NOTE: change this key to your own
ADD key_rsa.pub /root/.ssh/authorized_keys
RUN chown root:root /root/.ssh/authorized_keys

# -----
# Ports
# -----
EXPOSE 22 80 3306

CMD ["supervisord", "-n"]
