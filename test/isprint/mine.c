#include <stdio.h>

int ft_isprint(int c);

int	main(void)
{
	int	res = 0;
0	res |= (ft_isprint('0') == 0);
	res |= (ft_isprint(']') == 0) << 1;
	res |= (ft_isprint('7') == 0) << 2;
	res |= (ft_isprint('O') == 0) << 3;
	res |= (ft_isprint('o') == 0) << 4;
	res |= (ft_isprint('z') == 0) << 5;
	res |= (ft_isprint('Z') == 0) << 6;
	res |= (ft_isprint('a') == 0) << 7;
	res |= (ft_isprint('A') == 0) << 8;
	res |= (ft_isprint(' ') == 1) << 9;
	res |= (ft_isprint('&') == 0) << 10;
	res |= (ft_isprint(420) == 1) << 11;

	printf("final value (should be 0): %d\n", res);
	return 0;
}
