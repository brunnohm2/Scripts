PROGRAMAS_SNAP=(
	whatsapp-app
	inkscape
	youtube-music-desktop-app
	spotify
	arduino
	clickup
	bitwarden
)
## Instalando Snaps ##
instala_snaps(){
	for programa in ${PROGRAMAS_SNAP[@]}; do
		sudo snap install $programa
	done

	## Instalando Espanso espansor de textos##
	sudo snap install espanso --classic
	espanso service register
	espanso start

}