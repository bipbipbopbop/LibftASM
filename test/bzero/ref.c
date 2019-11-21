#include <stdio.h>
#include <string.h>
#include <unistd.h>

int	main(void)
{
	char	tab[20];

	strcpy(tab, "abcdefghijklmnopqrs");
	write(STDOUT_FILENO, tab, 20);
	bzero(tab + 10, 10);
	write(STDOUT_FILENO, tab, 20);
	bzero(tab + 2, 1);
	write(STDOUT_FILENO, tab, 20);

	return 0;
}
