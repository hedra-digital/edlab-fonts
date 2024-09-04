all:
	echo "ATENÇÃO: COLOCAR AS FONTES DA PASTA ~/.fonts"
	fc-cache -f -v

ubuntu-timesnewroman:
	sudo apt install ttf-mscorefonts-installer
ubuntu-libertine:
	sudo apt-get install -y fonts-linuxlibertine
manjaro-libertine:
	sudo pacman -Ss ttf-linux-libertine
	sudo pacman -S ttf-linux-libertine-g
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
