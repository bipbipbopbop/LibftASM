#include <stdio.h>

int ft_isascii(int c);

int	main(void)
{
	int	res = 0;

	res |= (ft_isascii('0') == 0);
	res |= (ft_isascii(']') == 0) << 1;
	res |= (ft_isascii('7') == 0) << 2;
	res |= (ft_isascii('O') == 0) << 3;
	res |= (ft_isascii('o') == 0) << 4;
	res |= (ft_isascii('z') == 0) << 5;
	res |= (ft_isascii('Z') == 0) << 6;
	res |= (ft_isascii('a') == 0) << 7;
	res |= (ft_isascii('A') == 0) << 8;
	res |= (ft_isascii(' ') == 0) << 9;
	res |= (ft_isascii('&') == 0) << 10;
	res |= (ft_isascii(420) == 1) << 11;

	printf("final value (should be 0): %d\n", res);
	return 0;
}
