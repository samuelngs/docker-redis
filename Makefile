# Makefile for Docker Image Builder
# Version 1.0
# Samuel Ng
#
# default: all

all: latest

latest:
	@docker build --no-cache -t infinitely/redis . ||:
