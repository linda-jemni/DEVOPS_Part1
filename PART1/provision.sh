#!/bin/sh

# Paranoia mode
set -e
set -u

HOSTNAME="$(hostname)"

export DEBIAN_FRONTEND=noninteractive

## Vérifier que le fichier .env est bien défini
if [ ! -f /vagrant/.env ]; then
	>&2 echo "ERROR: unable to find /vagrant/.env file"
	exit 1
fi


# Mettre à jour le catalogue des paquets debian
apt-get update --allow-releaseinfo-change

apt-get install -y \
    apt-transport-https \
    ca-certificates \
    git \
    curl \
    wget \
    vim \
    gnupg2 \
    net-tools \
    bash \
    sudo \
    software-properties-common \
    ansible



if [ "$HOSTNAME" = "s1.infra" ]; then
	# dnsmask installation 
    apt-get install -y dnsmasq resolvconf

    # dnsmasq pass configurations
    # dhcp-option=3  // remove the default gateway route
    # dhcp-range=192.168.50.10,192.168.50.20
    # dhcp-host=mac adress:19.2....
    # confs => /etc/dnsmasq.conf
    # sudo dhclient -r eth1 // To renew or release an IP address for the eth1 interface, enter:
    # sudo dhclient eth1

    
    # enable dnsmasq service
    #systemctl start dnsmasq

	# apt-get install -y \
		# puppet-master \
    
fi

# else
# 	# J'installe puppet dessus
# 	apt-get install -y \
# 		puppet
# fi



echo "SUCCESS."

