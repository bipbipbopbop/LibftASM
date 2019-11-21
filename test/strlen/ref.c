#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <signal.h>

void	catch_segv(int dummy)
{
	write(STDERR_FILENO, "\n[SEGFAULT CATCHED]", 19);
	exit(0);
}

int	main(void)
{
	char	*str;

	printf("%lu %lu %lu", strlen(""), strlen("E"), strlen("a very loooooooooooooooooooooooooooooooooooooooooooooooooooooooonoooooooooooooooooooooooooooooooooooooooooooooooooooooonoooooooooooooooooooooooooooooooooooooooooooooooooooooonoooooooooooooooooooooooooooooooooooooooooooooooooooooonoooooooooooooooooooooooooooooooooooooooooooooooooooooonoooooooooooooooooooooooooooooooooooooooooooooooooooooonoooooooooooooooooooooooooooooooooooooooooooooooooooooonoooooooooooooooooooooooooooooooooooooooooooooooooooooonoooooooooooooooooooooooooooooooooooooooooooooooooooooonoooooooooooooooooooooooooooooooooooooooooooooooooooooonoooooooooooooooooooooooooooooooooooooooooooooooooooooonoooooooooooooooooooooooooooooooooooooooooooooooooooooonoooooooooooooooooooooooooooooooooooooooooooooooooooooonoooooooooooooooooooooooooooooooooooooooooooooooooooooonoooooooooooooooooooooooooooooooooooooooooooooooooooooong string\n"));

	signal(SIGSEGV, catch_segv);
	strlen(NULL);

	return 0;
}
