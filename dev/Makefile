CC=../jcc/jcc
INCLUDE=-I../jcc/include
LINK=../jcc/prelink
LOBJS=../jcc/objs
RDRPREP=../rdrprep/rdrprep
HERCHOST=localhost
HERCPORT=3506

TARGET = hello.jcl
TARGETLIB=hello.out
SRCS = hello.c
OBJS := $(SRCS:%.c=%.obj)

all: $(TARGET)

$(TARGET): $(OBJS) link.jcl
	$(LINK) -s $(LOBJS) $(TARGETLIB) $(OBJS)
	$(RDRPREP) link.jcl $(TARGET)

hello.obj: hello.c
	$(CC) $(INCLUDE) -o hello.c

install: $(TARGET)
	nc -w1 $(HERCHOST) $(HERCPORT) < $(TARGET)

clean:
	rm -f *.obj $(TARGETLIB) $(TARGET)
