#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include <signal.h>

void	catch_segv(int dummy)
{
	write(STDERR_FILENO, "\n[SEGFAULT CATCHED]", 19);
	exit(0);
}

void	*ft_memcpy(void *dest, const void *src, size_t n);

int	main(void)
{
	char	str[10];

	for (int i = 0; i < 10; ++i)
		str[i] = 0;

	puts("Current str (should be empty): ");
	for (int i = 0; i < 10; ++i)
		printf("%#.2x ", str[i]);
	putchar('\n');

	ft_memcpy(str, "aaaaa", 5);
	puts("call to memcpy(str, \"aaaaa\", 5): ");
	for (int i = 0; i < 10; ++i)
		printf("%#.2x ", str[i]);
	putchar('\n');

	ft_memcpy(str + 3, "EEEE", 4);
	puts("call to memcpy(str + 3, \"EEEE\", 4):");
	for (int i = 0; i < 10; ++i)
		printf("%#.2x ", str[i]);
	putchar('\n');

	ft_memcpy(str, "ZZ", 0);
	puts("call to memcpy(str, \"ZZ\", 0):");
	for (int i = 0; i < 10; ++i)
		printf("%#.2x ", str[i]);
	putchar('\n');

	signal(SIGSEGV, catch_segv);// ft_memcpy(NULL, NULL, ...) doesn't segv
	puts("testing memcpy(NULL, NULL, 2)");
	ft_memcpy(NULL, NULL, 2);
	puts("testing memcpy(str, NULL, 2)");
	ft_memcpy(str, NULL, 2);
	puts("testing memcpy(NULL, \"kek\", 2)");
	ft_memcpy(NULL, "kek", 2);
	
	return 0;
}
