#!/bin/bash

rm -R site
mkdir -p site

cp bootstrap.min.css clean-blog.min.css debian.avif fav.png github.png prism.css prism.js style.css site/

cat header.html intro.html footer.html > site/intro.html
cat header.html bios_install.html footer.html > site/bios_install.html
cat header.html uefi_install.html footer.html > site/uefi_install.html
cat header.html sys_config.html footer.html > site/sys_config.html
cat header.html web-server.html footer.html > site/web-server.html

cat header.html contents.html footer.html > site/contents.html

sed -i 's/PAGEPRECEDENTE/ /g' site/intro.html
sed -i 's/PAGESUIVANTE/<a href="bios_install.html">Installation de Debian (BIOS) \&#11166;<\/a><br><a href="uefi_install.html">Installation de Debian (UEFI) \&#11166;<\/a>/g' site/intro.html

sed -i 's/PAGEPRECEDENTE/<a href="intro.html">\&#11164; Introduction<\/a>/g' site/bios_install.html
sed -i 's/PAGESUIVANTE/<a href="sys_config.html">Configuration des outils de base de Debian \&#11166;<\/a>/g' site/bios_install.html

sed -i 's/PAGEPRECEDENTE/<a href="intro.html">\&#11164; Introduction<\/a>/g' site/uefi_install.html
sed -i 's/PAGESUIVANTE/<a href="sys_config.html">Configuration des outils de base de Debian \&#11166;<\/a>/g' site/uefi_install.html

sed -i 's/PAGEPRECEDENTE/<a href="bios_install.html">\&#11164; Installation de Debian (BIOS)<\/a><br><a href="uefi_install.html">\&#11164; Installation de Debian (UEFI)<\/a>/g' site/sys_config.html
sed -i 's/PAGESUIVANTE/<a href="web-server.html">Configuration du serveur web \&#11166;<\/a>/g' site/sys_config.html

sed -i 's/PAGEPRECEDENTE/<a href="sys_config.html">\&#11164; Configuration des outils de base de Debian<\/a>/g' site/web-server.html
sed -i 's/PAGESUIVANTE/ /g' site/web-server.html

sed -i 's/PAGEPRECEDENTE/<a href="intro.html">\&#11164; Introduction<\/a>/g' site/contents.html
sed -i 's/PAGESUIVANTE/<a href="bios_install.html">Installation de Debian (BIOS) \&#11166;<\/a><br><a href="uefi_install.html">Installation de Debian (UEFI) \&#11166;<\/a>/g' site/contents.html
