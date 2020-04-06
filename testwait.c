#include "types.h"
#include "stat.h"
#include "user.h"

int
main(int argc, char *argv[])
{
    printf(1,"wait test:\n");

    int *status = malloc(4);
    if(fork()==0){
        printf(1,"process 1 exiting with status 0...\n");
        exit(0);
    }
    sleep(2);
    if(fork()==0){
        printf(1,"process 2 exiting with status 1...\n");
        exit(1);
    }
    sleep(2); // let children die
    printf(1,"waiting for child 1...\n");
    wait(status);
    printf(1,"done. status: %d\n", (*status));

    printf(1,"waiting for child 2...\n");
    wait(status);
    printf(1,"done. status: %d\n", (*status));

    free(status);
    exit(0);
}