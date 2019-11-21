#include <stdio.h>
#include <ctype.h>

int	main(void)
{
	int	res = 0;

	res |= (isascii('0') == 0);
	res |= (isascii(']') == 0) << 1;
	res |= (isascii('7') == 0) << 2;
	res |= (isascii('O') == 0) << 3;
	res |= (isascii('o') == 0) << 4;
	res |= (isascii('z') == 0) << 5;
	res |= (isascii('Z') == 0) << 6;
	res |= (isascii('a') == 0) << 7;
	res |= (isascii('A') == 0) << 8;
	res |= (isascii(' ') == 0) << 9;
	res |= (isascii('&') == 0) << 10;
	res |= (isascii(420) == 1) << 11;

	printf("final value (should be 0): %d\n", res);
	return 0;
}
