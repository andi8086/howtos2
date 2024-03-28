all: install tips.pdf tips.html

install: ./gems
	bundle config set path ./gems
	bundle install

./gems:
	install -d ./gems

DOCFILES := tips.adoc \
		gui.adoc \
		setup.adoc \
		sound.adoc \
		mutt.adoc \
		devel.adoc \
		boot.adoc \
		console.adoc \
		doc.adoc \
		tools.adoc \
		file.adoc \
		filesys.adoc \
		maintenance.adoc \
		distro-cache.adoc \
		virt.adoc \
		X.adoc \
		wm.adoc \
		i3.adoc \
		net.adoc \
		mail.adoc \
		maildrop.adoc \
		kernel.adoc \
		systemd-overlay.adoc \
		pacman.adoc \
		specific.adoc

tips.pdf: $(DOCFILES)
	BUNDLE_PATH=./gems bundle exec asciidoctor-pdf tips.adoc

tips.html: $(DOCFILES)
	BUNDLE_PATH=./gems bundle exec asciidoctor -b html tips.adoc
