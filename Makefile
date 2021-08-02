NAME = phomemo-tools
VERSION = 1.0

all:
	make -C cups
	make -C glabels

install:
	install -Dm 0644 README.md -t $(DESTDIR)/usr/share/phomemo/
	install -Dm 0644 LICENSE -t $(DESTDIR)/usr/share/phomemo/
	make -C tools install
	make -C cups install
	make -C glabels install

clean:
	rm -fr cups/ppd
	make -C glabels clean
