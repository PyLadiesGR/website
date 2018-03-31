.PHONY: all
all: install

.PHONY: install
install: themes/*
themes/*:
	git submodule init
	git submodule update

.PHONY: run
run: install
	hugo serve
