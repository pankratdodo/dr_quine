#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#define STR "#include <stdio.h>%1$c#include <stdlib.h>%1$c#include <unistd.h>%1$c#define STR %2$c%3$s%2$c%1$cint main()%1$c{%1$c    int i = %4$d;%1$c    if (i > 0)%1$c    {%1$c        char name[32];%1$c        char new_proc[64];%1$c        sprintf(name, %2$cSully_%5$cd.c%2$c, i);%1$c        if (access(name, F_OK ) != -1){%1$c            i--;%1$c            sprintf(name, %2$cSully_%5$cd.c%2$c, i);%1$c        }%1$c        FILE *fd;%1$c        fd = fopen(name, %2$cw%2$c);%1$c        fprintf(fd, STR, 10, 34, STR, i, 37);%1$c        fclose(fd);%1$c        sprintf(new_proc, %2$cgcc %5$cs -o Sully_%5$cd && ./Sully_%5$cd%2$c, name, i, i);%1$c        system(new_proc);%1$c    }%1$c    return (0);%1$c}%1$c"
int main()
{
    int i = 5;
    if (i > 0)
    {
        char name[32];
        char new_proc[64];
        sprintf(name, "Sully_%d.c", i);
        if (access(name, F_OK ) != -1){
            i--;
            sprintf(name, "Sully_%d.c", i);
        }
        FILE *fd;
        fd = fopen(name, "w");
        fprintf(fd, STR, 10, 34, STR, i, 37);
        fclose(fd);
        sprintf(new_proc, "gcc %s -o Sully_%d && ./Sully_%d", name, i, i);
        system(new_proc);
    }
    return (0);
}
