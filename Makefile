# vim: tabstop=4
# compiler and compiler flags
CC=coffee
CFLAGS=-bco javascript

all: javascript/*.js

# $< is the first item in the dependencies list
# % lets us generalize for all .js files
# must use tab instead of spaces
# also %.js doesn't match role.harvester.js, so
# I renamed it to role_harvester.js and role_harvester.coffee

javascript/%.js: %.coffee
	$(CC) $(CFLAGS) $<
