#include <stdio.h>
#include <ctype.h>

int	main(void)
{
	int	res = 0;

	res |= (isprint('0') == 0);
	res |= (isprint(']') == 0) << 1;
	res |= (isprint('7') == 0) << 2;
	res |= (isprint('O') == 0) << 3;
	res |= (isprint('o') == 0) << 4;
	res |= (isprint('z') == 0) << 5;
	res |= (isprint('Z') == 0) << 6;
	res |= (isprint('a') == 0) << 7;
	res |= (isprint('A') == 0) << 8;
	res |= (isprint(' ') == 1) << 9;
	res |= (isprint('&') == 0) << 10;
	res |= (isprint(420) == 1) << 11;

	printf("final value (should be 0): %d\n", res);
	return 0;
}
