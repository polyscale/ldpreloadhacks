LIB_CFLAGS += -O2 -Wall -fPIC -shared -Wl,--no-as-needed -ldl

all: nodelay tcpcork

nodelay: libnodelay.c
	$(CC) $(LIB_CFLAGS) $(CFLAGS) -o libnodelay.so libnodelay.c

tcpcork: libtcpcork.c
	$(CC) $(LIB_CFLAGS) $(CFLAGS) -o libtcpcork.so libtcpcork.c

clean:
	rm *.so
