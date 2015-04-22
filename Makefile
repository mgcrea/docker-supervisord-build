all: build

build:
	@docker build --tag=mgcrea/supervisord:latest .

base:
	@docker pull ubuntu:14.04

rebuild: base
	@docker build --tag=mgcrea/supervisord:latest .

release: rebuild
	@docker build --tag=mgcrea/supervisord:14.04.$(shell date +%Y%m%d) .
