#include <stdio.h>
#include <ctype.h>
#include <unistd.h>

int	ft_toupper(int c);

int	main(void)
{
	printf("\'%c\' \'%c\' \'%c\' \'%c\' \'%c\' \'%c\' \'%c\' \'%c\' \'%d\' \'%c\' \'%c\' \'%c\'\n",
		ft_toupper('a'), ft_toupper('b'), ft_toupper('o'), ft_toupper('f'), ft_toupper('e'), ft_toupper('z'),
		ft_toupper(' '), ft_toupper('E'), ft_toupper(420), ft_toupper('Z'), ft_toupper('['), ft_toupper('+'));

	return 0;
}
