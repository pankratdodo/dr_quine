COLLEEN = Colleen
GRACE = Grace
SULLY = Sully
COLLEEN_SOURCE = $(COLLEEN).c
GRACE_SOURCE = $(GRACE).c
SULLY_SOURCE = $(SULLY).c
COLLEEN_O = $(COLLEEN_SOURCE:.c=.o)
GRACE_O = $(GRACE_SOURCE:.c=.o)
SULLY_O = $(SULLY_SOURCE:.c=.o)

CG = clang
CCFLAGS = -Wall -Wextra -Werror

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN): $(COLLEEN_O)
	@$(CG) $(LDFLAGS) $(COLLEEN_SOURCE) -o $(COLLEEN)

$(GRACE): $(GRACE_O)
	@$(CG) $(LDFLAGS) $(GRACE_SOURCE) -o $(GRACE)

$(SULLY): $(SULLY_O)
	@$(CG) $(LDFLAGS) $(SULLY_SOURCE) -o $(SULLY)

clean:
	rm -f $(COLLEEN_O) $(GRACE_O) $(SULLY_O) tmp_Colleen Grace_kid.c
fclean: clean
	rm -f $(COLLEEN) $(GRACE) $(SULLY) Sully_*
re: fclean all
