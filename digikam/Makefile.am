
EXTRA_DIST = index.docbook addcamera.png cameraclient.png imageviewer.png mainwindow.png setupalbum.png

KDE_LANG = en
KDE_DOCS = digikam
DOCDIR = $(DESTDIR)${kde_htmldir}

endocbook_DATA = index.docbook
endocbookdir = $(kde_htmldir)/en/digikam
noinst_HEADERS = index_en.pot index-shifted.docbook


index_en.pot: index.docbook index-shifted.docbook
	xml2pot $(srcdir)/index.docbook > index_en.pot

index-shifted.docbook: index.docbook
	cat $(srcdir)/index.docbook | expand | sed s/^[\ ]*// > index-shifted.docbook

# --- Translated html help, not needed in distribution. Just for the Web site ---

index.html: index.docbook
	@MEINPROC@ --check index.docbook
	mkdir -p ../html
	mkdir -p ../html/en
	mv *.html ../html/en/
	cp -R *.png ../html/en/
	rm -Rf ./common
	mkdir -p ../html/en/common
	cp -R ${DOCDIR}/en/common/* ../html/en/common
	for file in ../html/en/*.html; do { \
		echo $$file; \
		cat $$file | sed s+help:/common+./common+g > $$file.new; \
		mv $$file.new $$file; \
	} done
