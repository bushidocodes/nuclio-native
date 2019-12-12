#include <stdio.h>

int hello(int argc, char **argv)
{
    printf("Hello %s\n", argv[1]);
    return 0;
}

int main(int argc, char **argv)
{
	return hello(argc, argv);
}
