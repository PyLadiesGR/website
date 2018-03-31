.PHONY: all
all: install

.PHONY: install
install: themes/*
themes/*:
	git submodule init
	git submodule update

.PHONY: build
build: install
	hugo --verbose

.PHONY: run
run: install
	hugo serve

.PHONY: clean
clean:
	rm -rf themes/*
