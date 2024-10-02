.POSIX:
SCDOC = scdoc

PREFIX = /usr/local
BINDIR = $(PREFIX)/bin
MANPREFIX = $(PREFIX)/share/man

PROGRAM = edit
SCRIPT = edit.sh

MAN1 = edit.1

all: $(PROGRAM) $(MAN1)

clean:
	rm -f $(PROGRAM)

install:
	mkdir -p $(DESTDIR)$(BINDIR)
	cp -f $(PROGRAM) $(DESTDIR)$(BINDIR)
	mkdir -p $(DESTDIR)$(MANPREFIX)/man1
	cp -f $(MAN1) $(DESTDIR)$(MANPREFIX)/man1

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/$(PROGRAM)
	rm -f $(DESTDIR)$(MANPREFIX)/man1/$(MAN1)

.SUFFIXES: .sh .scd
.sh:
	cp $< $@
	chmod 755 $@

.scd:
	$(SCDOC) < $< > $@
