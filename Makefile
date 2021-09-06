.PHONY: build
build:
	npx @11ty/eleventy

.PHONY: serve
serve:
	npx @11ty/eleventy --serve
