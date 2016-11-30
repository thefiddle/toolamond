DESTDIR 		?= /
SCRIPTS			= $(shell ls scripts/)
PREFIX			= /usr/local

install:install-scripts
	

install-scripts:
	$(foreach script, $(SCRIPTS), chmod +x scripts/$(script) ; install -D -m 0755 scripts/$(script) $(abspath $(DESTDIR)/$(PREFIX)/bin/$(script)) ; )


uninstall: uninstall-scripts

	
uninstall-scripts:
	$(foreach script, $(scriptS), rm $(abspath $(DESTDIR)/$(PREFIX)/bin/$(script)) ; )


.PHONY: install uninstall install-scripts