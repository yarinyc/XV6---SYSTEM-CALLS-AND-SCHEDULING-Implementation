#include "types.h"
#include "stat.h"
#include "user.h"

// fib function for heavier calculation
int fib(int n) 
{ 
   if (n <= 1) 
      return n; 
   return fib(n-1) + fib(n-2); 
} 

int
main(int argc, char *argv[])
{
    printf(1,"PID\t\tPS_PRIORITY\tSTIME\t\tRETIME\t\tRTIME\n");
    if(fork()==0){
      set_cfs_priority(1);
      set_ps_priority(1);
      int i = 1000000;
      int dummy = 0;
      while(i--){
        dummy+=i;
        fib(5);
      }
      struct perf *performance = malloc(sizeof(struct perf));
      proc_info(performance);
      printf(1,"%d\t\t%d\t\t%d\t\t%d\t\t%d\n",getpid(),performance->ps_priority,performance->stime,
              performance->retime, performance->rtime);
      free(performance);
      exit(0);
    }
    if(fork()==0){
      set_cfs_priority(2);
      set_ps_priority(5);
      int i = 1000000;
      int dummy = 0;
      while(i--){
        dummy+=i;
        fib(5);
      }
      struct perf *performance = malloc(sizeof(struct perf));
      proc_info(performance);
      printf(1,"%d\t\t%d\t\t%d\t\t%d\t\t%d\n",getpid(),performance->ps_priority,performance->stime,
              performance->retime, performance->rtime);
      free(performance);
      exit(0);
    }
    if(fork()==0){
      set_cfs_priority(3);
      set_ps_priority(10);
      int i = 1000000;
      int dummy = 0;
      while(i--){
        dummy+=i;
        fib(5); //do some calculation
      }
      struct perf *performance = malloc(sizeof(struct perf));
      proc_info(performance);
      printf(1,"%d\t\t%d\t\t%d\t\t%d\t\t%d\n",getpid(),performance->ps_priority,performance->stime,
              performance->retime, performance->rtime);
      free(performance);
      exit(0);
    }
    wait(null); // wait for all children to end
    wait(null);
    wait(null);
    exit(0);
}