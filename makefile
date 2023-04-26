TARGET := test2
SRC := $(TARGET).c
OBJ := $(TARGET).o
DO := libdlink.so

CFLAGS := -g -Wall

CC := gcc $(CFLAGS)
#all : $(TARGET)

$(TARGET): $(OBJ) $(SRC)
	$(CC) -o $@ $(OBJ) -L. libdlink.so
.c.o:
	$(CC) -c $^
clean:
	rm -f $(TARGET) $(OBJ)
	rm -f $(TARGET) $@
