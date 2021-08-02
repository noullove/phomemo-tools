XML=phomemo-m02-pro.xml

all: $(XML)

$(XML): Phomemo_M02_Pro.template generate.sh
	./generate.sh > $(XML)

install:
	install -Dm 0644 $(XML) $(DESTDIR)/usr/share/glabels-qt/templates/phomemo-m02-pro.template

clean:
	rm -f $(XML)
