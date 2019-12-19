#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <sys/time.h>
#include <time.h>

#define TIMESTAMP_BUFFER 50

int hello(int argc, char **argv)
{
    printf("Hello %s\n", argv[1]);
    return 0;
}

void serialize_timestamp(struct timeval *val, char *result) {
    char buffer[7];
    strftime(result,50,"%m-%d-%Y  %T.",localtime(&val->tv_sec));
    sprintf(buffer, "%ld",(val->tv_usec));
    strncat(result, buffer, TIMESTAMP_BUFFER - (strlen(buffer) + 1));
}

int main(int argc, char **argv)
{
    struct timeval start, end;
    char startStr[TIMESTAMP_BUFFER], endStr[TIMESTAMP_BUFFER];
    gettimeofday(&start, NULL);
	int rc = hello(argc, argv);
    gettimeofday(&end, NULL);
    serialize_timestamp(&start, startStr);
    serialize_timestamp(&end, endStr);
    printf("%s - Start of Function\n", startStr);
    printf("%s - End of Function\n", endStr);
    return rc;
}
