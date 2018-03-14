LISTEN_IP := 0.0.0.0

.PHONY: dev
dev: bundle
	bundle exec jekyll serve --host $(LISTEN_IP)

.PHONY: local-dev
local-dev: LISTEN_IP=127.0.0.1
local-dev: dev

.PHONY: local-dev
local-dev: bundle
	bundle exec jekyll serve

.PHONY: bundle
bundle:
	bundle install --deployment

.PHONY: build
build:
	bundle exec jekyll build --verbose --trace

.PHONY: clean
clean:
	rm -rf .bundle vendor
