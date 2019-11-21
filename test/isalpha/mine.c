#include <stdio.h>

int ft_isalpha(int c);

int	main(void)
{
	int	res = 0;

	res |= (ft_isalpha('0') == 1);
	res |= (ft_isalpha(']') == 1) << 1;
	res |= (ft_isalpha('7') == 1) << 2;
	res |= (ft_isalpha('O') == 0) << 3;
	res |= (ft_isalpha('o') == 0) << 4;
	res |= (ft_isalpha('z') == 0) << 5;
	res |= (ft_isalpha('Z') == 0) << 6;
	res |= (ft_isalpha('a') == 0) << 7;
	res |= (ft_isalpha('A') == 0) << 8;
	res |= (ft_isalpha(' ') == 1) << 9;
	res |= (ft_isalpha('&') == 1) << 10;
	res |= (ft_isalpha(420) == 1) << 11;

	printf("final value (should be 0): %d\n", res);
	return 0;
}
