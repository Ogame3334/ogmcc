CFLAGS=-std=c11 -g -static
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)

ogmcc: $(OBJS)
		$(CC) -o ogmcc $(OBJS) $(LDFLAGS)

$(OBJS): ogmcc.h

test: ogmcc
		./test.sh

clean:
		rm -f ogmcc *.o *~ tmp*

.PHONY: test clean