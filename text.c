#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#define CPU_CYCS 2100
#define MAX_BUF (1024 * 1024 * 10) //1m

#define ITERS_15US 125500
#define MULTIPLE 5

#define SPIN_ITERS (ITERS_15US * MULTIPLE)

__attribute__((optnone)) static void
wrk(void)
{
    unsigned int spin = 0;

    while (spin < SPIN_ITERS)
    {
        //__asm__ __volatile__("nop": : :"memory");
        spin++;
    }
}

//__attribute__((optnone)) int
int main(void)
{
    char *d = malloc(MAX_BUF + 1);
    int r = 0, l = 0;

    while ((r = read(0, d + l, MAX_BUF - l)) > 0)
    {
        l += r;
        if (l >= MAX_BUF)
            break;
        //printf("%d\n", r);
    }
    if (r < 0)
    {
        printf("E\n");
        return 0;
    }
    //printf("[%d], [%s]\n", l, d);
    //	unsigned long long st = rdtsc(), en = 0;
    //	wrk();
    //	en = rdtsc();

    //	if (r <= 0) printf("%llu\n", en > st ? (en - st)/CPU_CYCS : -1);
    if (l <= 1)
        printf("D\n");
    else
        write(1, d, l);

    return 0;
}