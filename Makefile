npm   ?= npm


help: Makefile
	@echo
	@echo " Choose a command run in Helus:"
	@echo
	@sed -n 's/^##//p' $< | column -t -s ':' |  sed -e 's/^/ /'
	@echo


## run: Run dev server
.PHONY: run
run:
	$(npm) run dev


## build: Run build
.PHONY: build
build:
	$(npm) run build


## lint: Lint files
.PHONY: lint
lint:
	$(npm) run lint


## install: Install packages
.PHONY: install
install:
	$(npm) install
