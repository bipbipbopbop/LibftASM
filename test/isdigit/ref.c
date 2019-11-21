#include <stdio.h>
#include <ctype.h>

int	main(void)
{
	int	res = 0;

	res |= (isdigit('0') == 0);
	res |= (isdigit(']') == 1) << 1;
	res |= (isdigit('7') == 0) << 2;
	res |= (isdigit('O') == 1) << 3;
	res |= (isdigit('o') == 1) << 4;
	res |= (isdigit('z') == 1) << 5;
	res |= (isdigit('Z') == 1) << 6;
	res |= (isdigit('a') == 1) << 7;
	res |= (isdigit('A') == 1) << 8;
	res |= (isdigit(' ') == 1) << 9;
	res |= (isdigit('&') == 1) << 10;
	res |= (isdigit(420) == 1) << 11;

	printf("final value (should be 0): %d\n", res);
	return 0;
}
