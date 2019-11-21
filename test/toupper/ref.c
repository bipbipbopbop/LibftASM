#include <stdio.h>
#include <ctype.h>
#include <unistd.h>

int	main(void)
{
	printf("\'%c\' \'%c\' \'%c\' \'%c\' \'%c\' \'%c\' \'%c\' \'%c\' \'%d\' \'%c\' \'%c\' \'%c\'\n",
		toupper('a'), toupper('b'), toupper('o'), toupper('f'), toupper('e'), toupper('z'),
		toupper(' '), toupper('E'), toupper(420), toupper('Z'), toupper('['), toupper('+'));

	return 0;
}
