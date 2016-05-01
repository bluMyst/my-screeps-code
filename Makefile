# compiler and compiler flags
CC=coffee
CFLAGS=-bc

all: *.js

# $< is the first item in the dependencies list
# % lets us generalize for all .js files
%.js: %.coffee
	$(CC) $(CFLAGS) $<
