CFLAGS = -O2 -std=c99 -Wall -Wextra -Werror -pedantic-errors
MAIN_SRC = ff3trans.c
ifneq ($(OS),Windows_NT)
	MAIN = ff3trans
else
	MAIN = ff3trans.exe
endif

all:			$(MAIN)

$(MAIN):
				$(CC) $(MAIN_SRC) $(CFLAGS) -o $(MAIN)

clean:
				$(RM) *~ $(MAIN)
