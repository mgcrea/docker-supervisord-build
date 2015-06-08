all: build

build:
	@docker build --tag=mgcrea/supervisord-build:12.04 .

base:
	@docker pull ubuntu:12.04

rebuild: base
	@docker build --tag=mgcrea/supervisord-build:12.04 .

release: rebuild
	@docker build --tag=mgcrea/supervisord-build:12.04.$(shell date +%Y%m%d) .
