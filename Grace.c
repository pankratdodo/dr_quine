#include <stdio.h>
#define COMM "comment"
#define STR "#include <stdio.h>%c#define COMM %ccomment%c%c#define STR %c%s%c%c#define RUN int main(){FILE *fd; fd = fopen(%cGrace_kid.c%c, %cw%c); fprintf(fd, STR, 10, 34, 34, 10, 34, STR, 34, 10, 34, 34, 34, 34, 10, 10, 10);}%c%cRUN%c"
#define RUN int main(){FILE *fd; fd = fopen("Grace_kid.c", "w"); fprintf(fd, STR, 10, 34, 34, 10, 34, STR, 34, 10, 34, 34, 34, 34, 10, 10, 10);}

RUN
