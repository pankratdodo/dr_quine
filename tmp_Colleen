#include <stdio.h>
/*
 * Comment outside of main function
 */

void another_func()
{
	char *str = "#include <stdio.h>%c/*%c * Comment outside of main function%c */%c%cvoid another_func()%c{%c	char *str = %c%s%c;%c	printf(str, 10, 10, 10, 10, 10, 10, 10, 34, str, 34, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10);%c}%c%cint main() {%c	/*%c	 * Comment in the main function%c	 */%c	another_func();%c	return 0;%c}%c";
	printf(str, 10, 10, 10, 10, 10, 10, 10, 34, str, 34, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10);
}

int main() {
	/*
	 * Comment in the main function
	 */
	another_func();
	return 0;
}
