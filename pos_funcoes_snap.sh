PROGRAMAS_SNAP=(
	whatsapp-app
	inkscape
	youtube-music-desktop-app
	spotify
)
## Instalando Snaps ##
instala_snaps(){
	for programa in ${PROGRAMAS_SNAP[@]}; do
		if ! snap list | grep -q $programa; then
			sudo snap install $programa
		fi
	done
}