#!/bin/bash
## Removendo travas eventuais do apt ##
source pos_funcoes_apt.sh
source pos_funcoes_snap.sh
source pos_funcoes_deb.sh
remove_travas_apt(){
	sudo rm /var/lib/dpkg/lock-frontend 
	sudo rm /var/cache/apt/archives/lock 
}
## Adiciona aquitetura 32bits
adiciona_arquitetura_32_bits(){
	sudo dpkg --add-architecture i386
}
## Atualizando o repositório ##
atualiza_repositorios(){
	sudo apt update			
	sudo apt dist-upgrade	
	sudo apt autoclean		
	sudo apt autoremove		
	sudo apt -f install		
}
# remove_travas_apt
# adiciona_arquitetura_32_bits
# atualiza_repositorios

instala_apts
# instala_snaps
# instala_debs

# atualiza_repositorios