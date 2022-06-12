.PHONY: build
build: node_modules
	npm run build

.PHONY: serve
serve: node_modules
	npm run serve

.PHONY: clean
clean: node_modules
	npm run clean

node_modules: package.json package-lock.json
	npm install
