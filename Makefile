TAG = $(shell date +%Y.%m.%d.%H%M)
.PHONY: all build

build:
	@echo "Tagging Docs as "$(TAG)
	docker build . -t radiodotco/hello-world:$(TAG)
	docker push radiodotco/hello-world:$(TAG)

