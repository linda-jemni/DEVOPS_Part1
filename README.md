# DEVOPS_Part1

1- Preparation de l'infrastructure 
    - Ecriture du fichier de configuration vagrantfile pour lancer nos 5 serveurs
    - Mise en place d'une conf réseau interne virtuelle entre les 5 machine inspiration de l'architecture VRack de OVH

    Chacun de nos serveurs posséde deux cartes réseaux :
    - eth0: pour un accès à internet,
    - eth1: pour un accés aux un réseau interne entre les serveurs

Pour tester le lancement des 5 machines il suffit de lancer : vagrant up 


2 - Provisionning

- concevoir une config ansible pour automatiser : 
- les spécifité réseaux , 
- instalation des services fournis par le mini-cluster)
    
    Config réseau des 5 serveurs
    - se former sur l'utilisation DNS masque et l'installer sur le serveur s0.infra 
    - configurer le service DHCP sur le serveur s0.infra
    - configurer un service DNS sur le même serveur
    - Indiquer à toute les machines pour qu’elles utilisent s0.infra comme serveur DNS principal.
    
    Installation des services 
    - Installer Apache 2 + PHP 7 sur s1.infra et s2.infra
    - Installer HAproxy sur s0.infra
    - Installer MariaDB sur s3.infra
    - Installer NFS Server sur s4.infra

3 - Déploiement de deux sites wordpress

Download & install & configure automatiquement les trois sites wordpress sur les serveurs web avec ansible 

