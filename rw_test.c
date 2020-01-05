#define BUFFER_SZ 50
#include <stdio.h>
int main(int argc, char **argv)
{
    FILE *fp;
    if ((fp = fopen("./test.txt", "a+")) == NULL)
    {
        printf("Error opening file!\n");
        return 1;
    }

    char buffer[BUFFER_SZ];

    rewind(fp);
    fgets(buffer, BUFFER_SZ, fp);
    printf("Before Append: %s\n", buffer);

    putc('A', fp);
    fflush(fp);

    rewind(fp);
    fgets(buffer, BUFFER_SZ, fp);
    printf("After Append : %s\n", buffer);

    int rc;
    if ((rc = fclose(fp)) == -1)
    {
        printf("Error opening file stream!\n");
    };
}