// demo_test_hash_init.c: show some expected results from hashset_init() function
#include <stdio.h>
#include <string.h>
#include "hashset.h"

int main(int argc, char *argv[]){
  hashset_t hashset = {                                   // hashset to initialize, filled with
    .elem_count = -1,                                     // values that should be overwritten
    .table_size = -1,
    .table = NULL,
  };

  hashset_init(&hashset, HASHSET_DEFAULT_TABLE_SIZE);     // call function being tested

  if(hashset.elem_count != 0){                            // check elem_count field after init
    printf("elem_count wrong\n");
    printf("Expect: %d\n",0);
    printf("Actual: %d\n",hashset.elem_count);
    return 1;
  }

  if(hashset.table_size != HASHSET_DEFAULT_TABLE_SIZE){   // check table_size field
    printf("table_size wrong\n");
    printf("Expect: %d\n",HASHSET_DEFAULT_TABLE_SIZE);
    printf("Actual: %d\n",hashset.table_size);
    return 1;
  }

  for(int i=0; i<hashset.table_size; i++){                // check all table entries have been NULL'ed
    if( hashset.table[i] != NULL ){
      printf("table[%d] wrong\n",i);
      printf("Expect: %p\n",NULL);
      printf("Actual: %p\n",hashset.table[i]);
      return 1;
    }
  }

  printf("OK\n");                                         // all tests passed
  return 0;
}
    
