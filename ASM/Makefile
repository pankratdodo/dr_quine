COLLEEN = Colleen
GRACE = Grace
SULLY = Sully
COLLEEN_SOURCE = $(COLLEEN).s
GRACE_SOURCE = $(GRACE).s
SULLY_SOURCE = $(SULLY).s
COLLEEN_O = $(COLLEEN_SOURCE:.s=.o)
GRACE_O = $(GRACE_SOURCE:.s=.o)
SULLY_O = $(SULLY_SOURCE:.s=.o)
NASM = nasm
CC = gcc
NASMFLAGS = -f macho64
CCFLAGS = -m64 -lc 2>&-

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN_O): $(COLLEEN_SOURCE)
	@$(NASM) $(NASMFLAGS) $(COLLEEN_SOURCE)

$(GRACE_O): $(GRACE_SOURCE)
	@$(NASM) $(NASMFLAGS) $(GRACE_SOURCE)
$(SULLY_O): $(SULLY_SOURCE)
	@$(NASM) $(NASMFLAGS) $(SULLY_SOURCE)

$(COLLEEN): $(COLLEEN_O)
	@$(CC) $(CCFLAGS) $(COLLEEN_O) -o $(COLLEEN)
$(GRACE): $(GRACE_O)
	@$(CC) $(CCFLAGS) $(GRACE_O) -o $(GRACE)
$(SULLY): $(SULLY_O)
	@$(CC) $(CCFLAGS) $(SULLY_O) -o $(SULLY)

clean:
	rm -f $(COLLEEN_O) $(GRACE_O) $(SULLY_O) Colleen_tmp Grace_kid.s Sully_*.o
fclean: clean
	rm -f $(COLLEEN) $(GRACE) $(SULLY) Sully_*
re: fclean all
