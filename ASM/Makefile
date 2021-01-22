COLLEEN = Colleen
GRACE = Grace
SULLY = Sully
COLLEEN_SOURCE = $(COLLEEN).s
# GRACE_SOURCE = $(GRACE).s
# SULLY_SOURCE = $(SULLY).s
COLLEEN_O = $(COLLEEN_SOURCE:.s=.o)
CC = nasm
LD = gcc
CCFLAGS = -f macho64
LDFLAGS = -m64 -lc 2>&-

all: $(COLLEEN)  #$(GRACE) $(SULLY)
$(COLLEEN_O): $(COLLEEN_SOURCE)
	@$(CC) $(CCFLAGS) $(COLLEEN_SOURCE)

$(COLLEEN): $(COLLEEN_O)
	@$(LD) $(LDFLAGS) $(COLLEEN_O) -o $(COLLEEN)
# $(GRACE):
# 	@$(CC) $(CCFLAGS) $(GRACE_SOURCE) -o $(GRACE_SOURCE:.s=.o)
# 	@$(LD) $(LDFLAGS) $(GRACE_SOURCE:.s=.o) -o $(GRACE)
# $(SULLY):
# 	@$(CC) $(CCFLAGS) $(SULLY_SOURCE) -o $(SULLY_SOURCE:.s=.o)
# 	@$(LD) $(LDFLAGS) $(SULLY_SOURCE:.s=.o) -o $(SULLY)

clean:
	rm -f $(COLLEEN_SOURCE:.s=.o) $(GRACE_SOURCE:.s=.o) $(SULLY_SOURCE:.s=.o) Colleen_tmp
fclean: clean
	rm -f $(COLLEEN) $(GRACE) $(SULLY)
re: fclean all
