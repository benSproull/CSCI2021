// stock.h: header for stock plotting problem

#ifndef STOCK_H
#define STOCK_H 1

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
  char *data_file;              // name of the data file stock data was loaded from
  int count;                    // length of prices array
  double *prices;               // array of stock prices at different time points
  int min_index;                // index of the minimum price
  int max_index;                // index of the maximum price
  int best_buy;                 // index at which to buy to get best profit
  int best_sell;                // index at which to sell to get best profit
} stock_t;

// stock_funcs.c
void stock_print(stock_t *stock);
stock_t *stock_new();
void stock_free(stock_t *stock);
void stock_set_minmax(stock_t *stock);
int stock_set_best(stock_t *stock);
int count_lines(char *filename);
int stock_load(stock_t *stock, char *filename);
void stock_plot(stock_t *stock, int max_width);

#endif
