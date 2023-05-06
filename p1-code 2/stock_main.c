// stock_main.c: Load a stock file and print it. This file is complete
// and does not require modification. However, the functions in
// stock_funcs.c must be completed to make it functional.

#include "stock.h"

int main(int argc, char *argv[]){
  if(argc < 3){
    printf("usage: %s <max_width> <stockfile>\n",argv[0]);
    return 1;
  }
  
  int max_width = atoi(argv[1]); // read width from command line
  char *filename = argv[2];      // read filename from command line

  stock_t *stock = stock_new();
  int ret = stock_load(stock, filename);
  if(ret == -1){
    printf("Failed to load stock, exiting\n");
    return 1;
  }

  stock_set_minmax(stock);
  ret = stock_set_best(stock);
  if(ret == -1){
    printf("No viable buy/sell point\n");
  }

  stock_print(stock);
  stock_plot(stock, max_width);

  stock_free(stock);

  return 0;
}
