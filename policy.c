#include "types.h"
#include "stat.h"
#include "user.h"

int
main(int argc, char *argv[])
{
  int policy_type;
  if(argc < 2){
    printf(2, "usage: policy policy_type...\n");
    exit(1);
  }
  policy_type = atoi(argv[1]);
  if(policy(policy_type) == -1){
    printf(1, "Error replacing policy, no such a policy number (%d)\n", policy_type);
    exit(1);
  }
  char* to_print = (policy_type == 0) ? "Default"  :
                   (policy_type == 1) ? "Priority" :
                   "CFS";
  printf(1, "Policy has been successfully changed to %s Policy\n", to_print);     
  exit(0);
}