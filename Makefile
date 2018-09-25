all: install tips.pdf

install: ./gems
	bundle install --path ./gems

./gems:
	install -d ./gems

tips.pdf: tips.adoc
	BUNDLE_PATH=./gems bundle exec asciidoctor-pdf tips.adoc
