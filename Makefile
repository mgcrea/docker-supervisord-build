all: build

build:
	@docker build --tag=mgcrea/supervisord-build:latest .

base:
	@docker pull ubuntu:14.04

rebuild: base
	@docker build --tag=mgcrea/supervisord-build:latest .

release: rebuild
	@docker build --tag=mgcrea/supervisord-build:14.04.$(shell date +%Y%m%d) .
