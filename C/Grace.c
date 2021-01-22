#include <stdio.h>
/**
 * Comment
 */
#define FILE_NAME "Grace_kid.c"
#define STR "#include <stdio.h>%c/**%c * Comment%c */%c#define FILE_NAME %cGrace_kid.c%c%c#define STR %c%s%c%c#define FN int main(){FILE *fd; fd = fopen(FILE_NAME, %cw%c); fprintf(fd, STR, 10, 10, 10, 10, 34, 34, 10, 34, STR, 34, 10, 34, 34, 10, 10, 10); fclose(fd);}%c%cFN%c"
#define FN int main(){FILE *fd; fd = fopen(FILE_NAME, "w"); fprintf(fd, STR, 10, 10, 10, 10, 34, 34, 10, 34, STR, 34, 10, 34, 34, 10, 10, 10); fclose(fd);}

FN
