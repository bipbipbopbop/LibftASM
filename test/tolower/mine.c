#include <stdio.h>
#include <ctype.h>
#include <unistd.h>

int	ft_tolower(int c);

int	main(void)
{
	printf("\'%c\' \'%c\' \'%c\' \'%c\' \'%c\' \'%c\' \'%c\' \'%c\' \'%d\' \'%c\' \'%c\' \'%c\'\n",
		ft_tolower('a'), ft_tolower('b'), ft_tolower('o'), ft_tolower('f'), ft_tolower('e'), ft_tolower('z'),
		ft_tolower(' '), ft_tolower('E'), ft_tolower(420), ft_tolower('Z'), ft_tolower('['), ft_tolower('+'));

	return 0;
}
