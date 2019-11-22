#include <stdio.h>
#include <ctype.h>
#include <unistd.h>

int	main(void)
{
	printf("\'%c\' \'%c\' \'%c\' \'%c\' \'%c\' \'%c\' \'%c\' \'%c\' \'%d\' \'%c\' \'%c\' \'%c\'\n",
		tolower('a'), tolower('b'), tolower('o'), tolower('f'), tolower('e'), tolower('z'),
		tolower(' '), tolower('E'), tolower(420), tolower('Z'), tolower('['), tolower('+'));

	return 0;
}
