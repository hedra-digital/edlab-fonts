all:
	echo "ATENÇÃO: COLOCAR AS FONTES DA PASTA ~/.fonts"
	fc-cache -f -v
timesnewroman:
	sudo apt install ttf-mscorefonts-installer
libertine:
	sudo apt-get install -y fonts-linuxlibertine
microsoft:
	sudo apt install ttf-mscorefonts-installer
context:
	export OSFONTDIR=$HOME/.fonts:/usr/share/fonts
	mtxrun --generate
	mtxrun --script font --reload
context-check:
	mtxrun --script fonts --list --all --pattern='*${font}*'
list:
	fc-list
