all: install tips.pdf tips.html

install: ./gems
	bundle install --path ./gems

./gems:
	install -d ./gems

DOCFILES := tips.adoc \
		gui.adoc \
		setup.adoc \
		devel.adoc \
		boot.adoc \
		console.adoc \
		doc.adoc \
		filesys.adoc \
		maintenance.adoc \
		virt.adoc \
		X.adoc \
		net.adoc \
		kernel.adoc

tips.pdf: $(DOCFILES)
	BUNDLE_PATH=./gems bundle exec asciidoctor-pdf tips.adoc

tips.html: $(DOCFILES)
	asciidoctor -b html tips.adoc
