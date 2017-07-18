.PHONY: all

CC := gcc

all: libbuffer.a libbuffer.so

libbuffer.a: buffer.c buffer.h
	ar rcs $@ $^

libbuffer.so: buffer.c
	$(CC) -g -shared -fPIC -Isrc -o $@ $^

test: test/test.c buffer.c
	$(CC) $^ -I. -o buffer_test
	./buffer_test
	rm -rf buffer_test

clean:
	rm -rf libbuffer.*
	rm -rf buffer_test
