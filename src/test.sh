if ! grep -qe "^thestinger$" "/etc/pacman.conf"; then
	echo $'[thestinger]\nSigLevel = Optional\nServer = http://pkgbuild.com/~thestinger/repo/$arch\n' >> /etc/pacman.conf
else
	echo "Repository already added."
fi