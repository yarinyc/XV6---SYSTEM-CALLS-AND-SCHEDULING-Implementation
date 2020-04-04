#include "types.h"
#include "stat.h"
#include "user.h"

int
main(int argc, char *argv[])
{
    int memory = memsize();
    printf(1, "The process is using: %dB\n", memory );
    printf(1, "Allocating more memory\n");
    char* arr = malloc(2048);
    memory = memsize();
    printf(1, "The process is using: %dB\n", memory );
    printf(1, "Freeing memory\n");
    free(arr);
    memory = memsize();
    printf(1, "The process is using: %dB\n", memory );
    exit(0);
}