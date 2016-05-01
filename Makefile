# vim: tabstop=4
# compiler and compiler flags
CC=coffee
CFLAGS=-bco javascript

all: *.js

# $< is the first item in the dependencies list
# % lets us generalize for all .js files
# must use tab instead of spaces

%.js: %.coffee
	$(CC) $(CFLAGS) $<
