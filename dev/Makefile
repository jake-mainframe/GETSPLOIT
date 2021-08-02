CC=../jcc/jcc
INCLUDE=-I../jcc/include
LINK=../jcc/prelink
LOBJS=../jcc/objs
RDRPREP=../rdrprep/rdrprep
HERCHOST=localhost
HERCPORT=3506

NAME=hello

TARGET = $(NAME).jcl
TARGETLIB=$(NAME).out
SRCS = $(NAME).c
OBJS := $(SRCS:%.c=%.obj)

all: $(TARGET)

$(TARGET): $(OBJS) link.jcl
	$(LINK) -s $(LOBJS) $(TARGETLIB) $(OBJS)
	$(RDRPREP) link.jcl $(TARGET)

$(NAME).obj: $(NAME).c
	$(CC) $(INCLUDE) -o $(NAME).c

install: $(TARGET)
	nc -w1 $(HERCHOST) $(HERCPORT) < $(TARGET)

clean:
	rm -f *.obj $(TARGETLIB) $(TARGET)
