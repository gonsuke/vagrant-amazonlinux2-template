seedimage:
	rm seed.iso || hdiutil makehybrid -o seed.iso -hfs -joliet -iso -default-volume-name cidata config/

box:
	vagrant package --base 'Amazon Linux 2' && vagrant box add --name amazonlinux2rc package.box

up:
	cd vagrant; vagrant up


