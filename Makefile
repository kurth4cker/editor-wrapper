.POSIX:

PREFIX = /usr/local
BINDIR = $(PREFIX)/bin

BIN = edit
SCRIPT = edit.sh

all: $(BIN)

clean:
	rm -f $(BIN)

install: $(BIN)
	mkdir -p $(DESTDIR)$(BINDIR)
	cp -f $(BIN) $(DESTDIR)$(BINDIR)

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/$(BIN)
	-rmdir $(DESTDIR)$(BINDIR)

.SUFFIXES: .sh
.sh:
	cat < $< > $@
	chmod 755 $@
