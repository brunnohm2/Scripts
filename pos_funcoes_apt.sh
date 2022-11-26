PROGRAMAS_APT=(
	anthy		## [Escrita Hiragana Katakana ][Tecla de atalho Shift+Super+Espaco][Link https://www.vivaolinux.com.br/dica/Input-method-em-japones-a-partir-de-Romaji-no-Gnome-shell]
	ibus-anthy	## Versao Kanji do teclado
	samba		## Servico de compartilhamento de pastas e arquivos pela rede
	libfuse2	## Serve para rodar AppImage corretamente
	virtualbox	## Cria Maquinas Virtuais
	vlc			## Codec de videos
	vim			## Editor de textos
)
## Instalando apts ##
instala_apts(){
	for programa in ${PROGRAMAS_APT[@]}; do
		sudo apt install $programa -y 
	done
}