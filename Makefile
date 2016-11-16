PREFIX ?= /usr/local

all:
	@echo "gtomb does not need compilation."
	@echo "to install, run 'make install'."

install:
	@echo "installing to ${DESTDIR}${PREFIX}/gtomb"
	@mkdir -p ${DESTDIR}${PREFIX}/share/applications
	@mkdir -p ${DESTDIR}${PREFIX}/share/pixmaps
	@cp -f gtomb.desktop ${DESTDIR}${PREFIX}/share/applications/gtomb.desktop
	@cp -f monmort.png ${DESTDIR}${PREFIX}/share/pixmaps/gtomb.png
	@cp -f gtomb ${DESTDIR}${PREFIX}/gtomb
	@chmod +x ${DESTDIR}${PREFIX}/gtomb

uninstall:
	@echo "uninstalling from ${DESTDIR}${PREFIX}"
	@rm -f ${DESTDIR}${PREFIX}/gtomb
	@rm -f ${DESTDIR}${PREFIX}/share/pixmaps/gtomb.png
	@rm -f ${DESTDIR}${PREFIX}/share/applications/gtomb.desktop
