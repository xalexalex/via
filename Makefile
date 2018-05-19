PREFIX=/usr/local

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f via $(DESTDIR)$(PREFIX)/bin/via
	cp -f via-feed $(DESTDIR)$(PREFIX)/bin/via-feed
	cp -f via-menu $(DESTDIR)$(PREFIX)/bin/via-menu
	cp -f via-open $(DESTDIR)$(PREFIX)/bin/via-open

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/via
	rm -f $(DESTDIR)$(PREFIX)/bin/via-feed
	rm -f $(DESTDIR)$(PREFIX)/bin/via-menu
	rm -f $(DESTDIR)$(PREFIX)/bin/via-open
