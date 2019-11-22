#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <signal.h>

void	catch_segv(int dummy)
{
	write(STDERR_FILENO, "\n[SEGFAULT CATCHED]", 19);
	exit(0);
}

void	*ft_memset(void *s, int c, size_t n);

int	main(void)
{
	char	str[10];

	for (int i = 0; i < 10; ++i)
		str[i] = 0;

	puts("Current str (should be empty): ");
	for (int i = 0; i < 10; ++i)
		printf("%#.2x ", str[i]);
	putchar('\n');

	ft_memset(str, 'a', 5);
	puts("call to ft_memset(str, 'a', 5): ");
	for (int i = 0; i < 10; ++i)
		printf("%#.2x ", str[i]);
	putchar('\n');

	ft_memset(str + 3, 'E', 4);
	puts("call to ft_memset(str + 3, 'E', 4):");
	for (int i = 0; i < 10; ++i)
		printf("%#.2x ", str[i]);
	putchar('\n');

	ft_memset(str, 'Z', 0);
	puts("call to ft_memset(str, 'Z', 0):");
	for (int i = 0; i < 10; ++i)
		printf("%#.2x ", str[i]);
	putchar('\n');

//	signal(SIGSEGV, catch_segv);// ft_memset(NULL, ...) doesn't segv
	ft_memset(NULL, 0, 0);

	return 0;
}
