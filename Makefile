EXE = tls_server
OBJ = tls_server.o
CFLAGS = -std=gnu99 -lssl -lcrypto

all: ${EXE}

${EXE}: ${OBJ}
	${CC} $< -o $@ ${CFLAGS}

%.o: %.c
	${CC} -c $<

format:
	@clang-format -i *.c

clean:
	${RM} ${EXE} *.o
