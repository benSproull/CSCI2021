// stock_demo.c: provides a quick demo of stock functions and the
// output of stock_plot() which should look like the following.
// 
// max_width: 25
// range:     309.00
// plot step: 12.36
//                     +-------------------------
//   0:         223.00 |################
//   1:         292.00 |######################
//   2: B        27.00 |#
//   3:          92.00 |######
//   4: S MAX   323.00 |#########################
//   5:         189.00 |##############
//   6:         207.00 |###############
//   7:         142.00 |##########
//   8:         321.00 |########################
//   9:          89.00 |######
//  10:   MIN    14.00 |
//  11:         182.00 |#############
//  12:         164.00 |############
//  13:         156.00 |###########
//  14:         169.00 |############

#include "stock.h"

int main(int argc, char *argv[]){
  stock_t *stock = stock_new();
  stock_load(stock, "data/stock-min-after-max.txt");
  stock_set_minmax(stock);
  stock_set_best(stock);
  stock_plot(stock, 25);
  stock_free(stock);
  return 0;
}
