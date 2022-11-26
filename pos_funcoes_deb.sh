PROGRAMAS_DEB=(
	https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	https://launcher.mojang.com/download/Minecraft.deb
	https://az764295.vo.msecnd.net/stable/6261075646f055b99068d3688932416f2346dd3b/code_1.73.1-1667967334_amd64.deb
	https://appest-public.s3.amazonaws.com/download/linux/linux_deb_x64/ticktick-1.0.40-amd64.deb
	'https://atom-installer.github.com/v1.60.0/atom-amd64.deb?s=1646703804&ext=.deb'
	https://github.com/shiftkey/desktop/releases/download/release-3.1.1-linux1/GitHubDesktop-linux-3.1.1-linux1.deb
)
DIRETORIO_DE_PROGRAMAS="$HOME/Downloads/programas"

## Baixa pacotes Debs ##
instala_debs () {
	[[ ! -d $DIRETORIO_DE_PROGRAMAS ]] && mkdir $DIRETORIO_DE_PROGRAMAS

	for url in ${PROGRAMAS_DEB[@]}; do
		wget -c $url -P $DIRETORIO_DE_PROGRAMAS
	done
	
	sudo dpkg -i $DIRETORIO_DE_PROGRAMAS/*.deb
}