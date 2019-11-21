#include <stdio.h>
#include <ctype.h>

int	main(void)
{
	int	res = 0;

	res |= (isalpha('0') == 1);
	res |= (isalpha(']') == 1) << 1;
	res |= (isalpha('7') == 1) << 2;
	res |= (isalpha('O') == 0) << 3;
	res |= (isalpha('o') == 0) << 4;
	res |= (isalpha('z') == 0) << 5;
	res |= (isalpha('Z') == 0) << 6;
	res |= (isalpha('a') == 0) << 7;
	res |= (isalpha('A') == 0) << 8;
	res |= (isalpha(' ') == 1) << 9;
	res |= (isalpha('&') == 1) << 10;
	res |= (isalpha(420) == 1) << 11;

	printf("final value (should be 0): %d\n", res);
	return 0;
}
