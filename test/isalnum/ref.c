#include <stdio.h>
#include <ctype.h>

int	main(void)
{
	int	res = 0;

	res |= (isalnum('0') == 0);
	res |= (isalnum(']') == 1) << 1;
	res |= (isalnum('7') == 0) << 2;
	res |= (isalnum('O') == 0) << 3;
	res |= (isalnum('o') == 0) << 4;
	res |= (isalnum('z') == 0) << 5;
	res |= (isalnum('Z') == 0) << 6;
	res |= (isalnum('a') == 0) << 7;
	res |= (isalnum('A') == 0) << 8;
	res |= (isalnum(' ') == 1) << 9;
	res |= (isalnum('&') == 1) << 10;
	res |= (isalnum(420) == 1) << 11;

	printf("final value (should be 0): %d\n", res);
	return 0;
}
