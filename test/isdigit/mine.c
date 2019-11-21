#include <stdio.h>

int ft_isdigit(int c);

int	main(void)
{
	int	res = 0;

	res |= (ft_isdigit('0') == 0);
	res |= (ft_isdigit(']') == 1) << 1;
	res |= (ft_isdigit('7') == 0) << 2;
	res |= (ft_isdigit('O') == 1) << 3;
	res |= (ft_isdigit('o') == 1) << 4;
	res |= (ft_isdigit('z') == 1) << 5;
	res |= (ft_isdigit('Z') == 1) << 6;
	res |= (ft_isdigit('a') == 1) << 7;
	res |= (ft_isdigit('A') == 1) << 8;
	res |= (ft_isdigit(' ') == 1) << 9;
	res |= (ft_isdigit('&') == 1) << 10;
	res |= (ft_isdigit(420) == 1) << 11;

	printf("final value (should be 0): %d\n", res);
	return 0;
}
