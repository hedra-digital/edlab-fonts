all:
	echo "ATENÇÃO: COLOCAR AS FONTES DA PASTA ~/.fonts"
	fc-cache -f -v
timesnewroman:
	sudo apt install ttf-mscorefonts-installer
libertine:
	sudo apt-get install -y fonts-linuxlibertine
microsoft:
	sudo apt install ttf-mscorefonts-installer

context-font-map:
	echo "export OSFONTDIR=${HOME}/.fonts:/usr/share/fonts" >> ~/.bashrc
	echo "export OSFONTDIR=${HOME}/.fonts:/usr/share/fonts" >> ~/.zshrc

context-generate:
	mtxrun --generate
	mtxrun --script font --reload

context-check:
	mtxrun --script fonts --list --all --pattern='*${font}*'

list:
	fc-list
