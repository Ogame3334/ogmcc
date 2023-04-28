CFLAGS=-std=c11 -g -static

ogmcc: ogmcc.c

test: ogmcc
		./test.sh

clean:
		rm -f ogmcc *.o *~ tmp*

.PHONY: test clean