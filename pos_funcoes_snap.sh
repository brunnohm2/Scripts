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
}