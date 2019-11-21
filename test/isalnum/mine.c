#include <stdio.h>

int ft_isalnum(int c);

int	main(void)
{
	int	res = 0;

	res |= (ft_isalnum('0') == 0);
	res |= (ft_isalnum(']') == 1) << 1;
	res |= (ft_isalnum('7') == 0) << 2;
	res |= (ft_isalnum('O') == 0) << 3;
	res |= (ft_isalnum('o') == 0) << 4;
	res |= (ft_isalnum('z') == 0) << 5;
	res |= (ft_isalnum('Z') == 0) << 6;
	res |= (ft_isalnum('a') == 0) << 7;
	res |= (ft_isalnum('A') == 0) << 8;
	res |= (ft_isalnum(' ') == 1) << 9;
	res |= (ft_isalnum('&') == 1) << 10;
	res |= (ft_isalnum(420) == 1) << 11;

	printf("final value (should be 0): %d\n", res);
	return 0;
}
