all:
	echo "ATENÇÃO: COLOCAR AS FONTES DA PASTA ~/.fonts"
	fc-cache -f -v
timesnewroman:
	sudo apt install ttf-mscorefonts-installer
libertine:
	sudo apt-get install -y fonts-linuxlibertine
microsoft:
	sudo apt install ttf-mscorefonts-installer
list:
	fc-list
