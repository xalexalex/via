PREFIX=/usr/local

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f via $(DESTDIR)$(PREFIX)/bin/via
	cp -f via-feed $(DESTDIR)$(PREFIX)/bin/via-feed
	cp -f vopen $(DESTDIR)$(PREFIX)/bin/vopen

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/via
	rm -f $(DESTDIR)$(PREFIX)/bin/via-feed
	rm -f $(DESTDIR)$(PREFIX)/bin/vopen
