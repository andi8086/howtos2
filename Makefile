all: install tips.pdf tips.html

install: ./gems
	bundle install --path ./gems

./gems:
	install -d ./gems

DOCFILES := tips.adoc \
		gui.adoc \
		setup.adoc \
		mutt.adoc \
		devel.adoc \
		boot.adoc \
		console.adoc \
		doc.adoc \
		filesys.adoc \
		maintenance.adoc \
		distro-cache.adoc \
		virt.adoc \
		X.adoc \
		wm.adoc \
		i3.adoc \
		net.adoc \
		kernel.adoc \
		systemd-overlay.adoc \
		pacman.adoc \
		specific.adoc

tips.pdf: $(DOCFILES)
	BUNDLE_PATH=./gems bundle exec asciidoctor-pdf tips.adoc

tips.html: $(DOCFILES)
	BUNDLE_PATH=./gems bundle exec asciidoctor -b html tips.adoc
