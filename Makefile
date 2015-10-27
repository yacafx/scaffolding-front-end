.DEFAULT_GOAL := help

.PHONY: build \
				clean \
				fonts \
				help \
				images \
				install \
				run \
				scripts \
				styles \
				templates \
				tree \
				watch

.SILENT:

# generate assets
build: fonts images scripts styles templates

# clean generated assets
clean:
	tasks/clean

# handle the fonts
fonts: tree
	tasks/fonts

# show some help
help:
	tasks/help

# compress images
images: tree
	tasks/images

# install project dependencies
install:
	tasks/install

# start the web server
run: build
	tasks/run

# generate scripts
scripts: tree
	tasks/scripts

# generate styles
styles: tree
	tasks/styles

# generate templates
templates: tree
	tasks/templates

# generate the public file tree
tree:
	tasks/tree

# build whenever something changes
watch: build
	tasks/watch
