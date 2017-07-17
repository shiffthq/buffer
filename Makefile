.PHONY: all

CC := gcc

all: libbuffer.a libbuffer.so

libbuffer.a: buffer.c
	ar rcs $@ $^

libbuffer.so: buffer.c
	$(CC) -g -shared -fPIC -Isrc -o $@ $^

test: test.c buffer.c
	$(CC) $^ -o $@
	./test
	rm -rf test

clean:
	rm -rf libbuffer.*
	rm -rf test
