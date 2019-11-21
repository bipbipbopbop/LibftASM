#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <signal.h>

void	catch_segv(int dummy)
{
	write(STDERR_FILENO, "\n[SEGFAULT CATCHED]", 19);
	exit(0);
}

size_t	ft_strlen(char *s);

int		main(void)
{
	char	*str;

	printf("%lu %lu %lu", ft_strlen(""), ft_strlen("E"), ft_strlen("a very loooooooooooooooooooooooooooooooooooooooooooooooooooooooonoooooooooooooooooooooooooooooooooooooooooooooooooooooonoooooooooooooooooooooooooooooooooooooooooooooooooooooonoooooooooooooooooooooooooooooooooooooooooooooooooooooonoooooooooooooooooooooooooooooooooooooooooooooooooooooonoooooooooooooooooooooooooooooooooooooooooooooooooooooonoooooooooooooooooooooooooooooooooooooooooooooooooooooonoooooooooooooooooooooooooooooooooooooooooooooooooooooonoooooooooooooooooooooooooooooooooooooooooooooooooooooonoooooooooooooooooooooooooooooooooooooooooooooooooooooonoooooooooooooooooooooooooooooooooooooooooooooooooooooonoooooooooooooooooooooooooooooooooooooooooooooooooooooonoooooooooooooooooooooooooooooooooooooooooooooooooooooonoooooooooooooooooooooooooooooooooooooooooooooooooooooonoooooooooooooooooooooooooooooooooooooooooooooooooooooong string\n"));

	signal(SIGSEGV, catch_segv);
	strlen(NULL);

	return 0;
}
