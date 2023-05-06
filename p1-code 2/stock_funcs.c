// stock_funcs.c: support functions for the stock_main program.

#include "stock.h"

// PROBLEM 1: Allocate a new stock struct and initialize its fields.
// Integer fields like 'count' and 'min_index' should be initialied to
// -1.  Pointer fields like 'prices' should be initialized to
// NULL. The stock should be heap-allocated using malloc() and
// returned.  Since this is an allocation function, no use of 'free()'
// should appear.
stock_t *stock_new(){
  stock_t *stock = malloc(sizeof(stock_t));
  stock->data_file = NULL;
  stock->count = -1;
  stock->prices = NULL;
  stock->min_index = -1;
  stock->max_index = -1;
  stock->best_buy = -1;
  stock->best_sell = -1;
  return stock;
}

// PROBLEM 1: Free a stock. Check the 'data_file' and 'prices' fields:
// if they are non-NULL, then free them. Then free the pointer to
// 'stock' itself.
void stock_free(stock_t *stock){
  if(&stock->data_file != NULL){
    free(stock->data_file);
    free(stock->prices);
    
  }
  free(stock);
  return;
}

// PROBLEM 1: Prints data about a stock that is passed in via a
// pointer. Uses the syntax ptr->field to access fields of the struct
// pointed by 'stock'.  Output follows the general convention:
//
// data_file: data/stock-jagged.txt                      
// count: 15
// prices: [103.00, 250.00, 133.00, ...]
// min_index: 8
// max_index: 11
// best_buy:  8
// best_sell: 11
// profit:    232.00
//
// Where each line prints a field of the stock_t struct. In all cases,
// floating point numbers are printed with 2 decimal digits of accuracy.
//
// NULLS FOR FIELDS
// The fields 'data_file' and 'prices' may be NULL in which case they
// will be printed specially as in
// 
// data_file: NULL
// prices: NULL
//
// This requires a manual if/else check for NULL values for these pointers.
// 
// PRICES FIELD
// When printing the 'prices' field, if the 'count' field is 0 to 3,
// print the entire array as in
//
// prices: []                        # count == 0
// prices: [70.00]                   # count == 1
// prices: [50.00, 90.00]            # count == 2
// prices: [59.00, 45.00, 103.00]    # count == 3
//
// Otherwise, print the first 3 elements with a ... at the end as in
//
// prices: [10.00, 20.00, 30.00, ...] # count > 3
//
// PROFIT
// There is no 'profit' field in the struct. Instead, calculate the
// profit as the difference between the price at the 'best_sell' index
// and 'best_buy' index.  If these indices are -1 indicating the best
// buy/sell time is not known or not viable, print a proit of 0.0
void stock_print(stock_t *stock){
  double profit;
  if(stock->best_buy == -1 || stock->best_sell == -1){
    profit = 0.0;
  }else{
    profit = (stock->prices[stock->best_sell] - stock->prices[stock->best_buy]);
  }

  if(stock->data_file == NULL){
    printf("data_file: NULL\n");
  } else{
    printf("data_file: %s\n",stock->data_file);
  }
  printf("count: %d\n", stock->count);
  
  if(stock->prices == NULL){
    printf("prices: NULL\n");
  }
  else{
    if(stock->count > 3){
      printf("prices: [%.2lf, %.2lf, %.2lf, ...]\n",stock->prices[0],stock->prices[1],stock->prices[2]);
  } else if (stock->count == 2){
      printf("prices: [%.2lf, %.2lf]\n",stock->prices[0],stock->prices[1]);
  } else if (stock->count == 1){
    printf("prices: [%.2lf]\n",stock->prices[0]);
  } else if (stock->count == 0){
    printf("prices: []\n");
  } else{
     printf("prices: [%.2lf, %.2lf, %.2lf]\n",stock->prices[0],stock->prices[1],stock->prices[2]);
  }
   
  
  }
  
  printf("min_index: %d\n",stock->min_index);
  printf("max_index: %d\n",stock->max_index);
  printf("best_buy: %d\n", stock->best_buy);
  printf("best_sell: %d\n", stock->best_sell);
  printf("profit: %.2lf\n", profit);
  return;
}


// PROBLEM 1: Sets the index of 'min_index' and 'max_index' fields of
// the stock to be the positions in 'prices' of the minimum and
// maximum values present in it. Uses a simple loop over the array
// 'prices' which is 'count' elements long to examine each for
// max/min. If 'count' is zero, makes no changes to 'min_index' and
// 'max_index'.
void stock_set_minmax(stock_t *stock){
  stock->min_index = 1;
  stock->max_index = 1;
  if(stock->count == 0){
    stock->min_index = -1;
    stock->max_index = -1;
  } 
  if (stock->count == 1){
    stock->min_index = 0;
    stock->max_index = 0;
  }
  for (int i = 0; i < stock->count; i++){
    if (stock->prices[i] < stock->prices[stock->min_index]){
      stock->min_index = i;
    }
    if (stock->prices[i] > stock->prices[stock->max_index]){
      stock->max_index = i;
    }
  }
  return;
}
  
// PROBLEM 2: Sets the 'best_buy' and 'best_sell' fields of 'stock'.
// This corresponds to the pair which produces the best profit. On
// determining the best buy/sell indices which produce a positive
// profit, sets these fields in 'stock' and returns 0. If there is no
// buy/sell point which would result in a positive profit, sets the
// 'best_buy' and 'best_sell' indices to -1 and returns -1. Always
// calculates the earliest buy/sell pair of indices that would get the
// best profit: if 5,8 and 5,9 and 7,10 all give the same, maximal
// profit, the best buy/sell indices are set to 5,7.
// 
// ALGORITHM NOTES
// One intuitive algorithm to compute this is to try every possible
// buy index (outer loop) and every possible sell index after it
// (inner loop) looking for the maximum profit produced in it. This is
// a O(N^2) algorithm with N=count.  Using this algorithm is a good
// start. Some MAKEUP CREDIT will be awarded for implementing a more
// efficient, O(N) algorithm here. See the specification for more details.
int stock_set_best(stock_t *stock){
  double profit_current;
  double max_profit = 0.00;
  int bestB = -1;
  int bestS = -1;
  
  for(int i = 0; i < stock->count; i++){
    for(int j = i + 1; j < stock->count; j++){
      
      profit_current = stock->prices[j] - stock->prices[i];
      if(profit_current > max_profit){
      
        max_profit = profit_current;
        bestB = i;
        bestS = j;

      }
    }
  }
  if (max_profit > 0){
    stock->best_buy = bestB;
    stock->best_sell = bestS;
    return 0;
  }else{
    stock->best_buy = -1;
    stock->best_sell = -1;
    return -1;
  }
  return 0;
}

// PROBLEM 2: Opens file named 'filename' and counts how many times
// the '\n' newline character appears in it which corresponds to how
// many lines of text are in it.  Makes use of either fscanf() with
// the %c format to read single characters or alternative I/O
// functions like fgetc(). Closes the file before returning a count of
// how many lines are it it.  If for any reason the file cannot be
// opened, prints a message like
//
// Could not open file 'not-there.txt'
//
// and returns -1 to indicate failure.
int count_lines(char *filename){
  FILE *fp = fopen(filename, "r");
  int count = 0;
  if(fp == NULL){
    printf("Could not open file '%s'\n", filename);
    return -1;
   }
  for(char c = getc(fp); c != EOF; c = getc(fp)){
    if(c == '\n'){
      count++;
    }
  } 
  fclose(fp);
  return count;
}

// PROBLEM 2: Loads a stock from file 'filename' into 'stock' filling
// its 'prices' and 'count' fields in. Makes use of the count_lines()
// function to determine how many lines are in the file which will
// dictate 'count' and the length of 'prices'. Allocates space in the
// heap for the stock's 'prices' array, opens the 'filename' and
// iterates through reading prices into the array. The data format for
// prices files is
//
// time_03 133.00
// time_04 143.00
// time_05 168.00
// time_06 91.00
// 
// where each line has a time as as single string and a price which is
// floating point number. The times can be ignored which can be
// accomplished with a fscanf() call with format "%*s" to read a
// string but ignore/discard it.
// 
// Assigns the 'datafile' field to be a duplicated string of
// 'filename' for which 'strdup()' is extremely useful. This string
// must be free()'d later likely in 'stock_free()'
// 
// On successfully loading the stock, returns 0.
//
// If 'filename' cannot be opened, prints the message 
// 
// Unable to open stock file 'some-stock.txt', bailing out
//
// with 'filename' substituted in for the name of the stock and
// returns -1.
int stock_load(stock_t *stock, char *filename){
  
  FILE *fp = fopen(filename, "r");
  
  
  if(fp == NULL){
    printf("Could not open file '%s'\n", filename);
    printf("Unable to open stock file '%s', bailing out\n", filename);
    return -1;
   }
   int lines = count_lines(filename);
   stock->prices = malloc(sizeof(double)*lines);
   stock->count = lines;
   for(int i = 0; i < lines; i++){
  
    fscanf(fp, "%*s");
    fscanf(fp, "%lf", &stock->prices[i]);

   }
   stock->data_file = strdup(filename);
   fclose(fp);

  
  return 0;
}

// PROBLEM 2: Plots a graphical representation of stock
// information. First calculates and prints plot which is in the
// following format:
//
// max_width: 25
// range:     40.00
// plot step: 1.60
//
// The prints a header line and iterates through each stock data on it
// along with a bar which varies in width with the stock price. A
// sample format is as follows with some annotations.
// 
//....20 spaces.......+ ...max_width dashes.....
//01234567890123456789
//                    +-------------------------
//  0:         223.00 |################
//  1:         292.00 |######################
//  2: B        27.00 |#
//  3:          92.00 |######
//  4: S MAX   323.00 |#########################
//  5:         189.00 |##############
//  6:         207.00 |###############
//  7:         142.00 |##########
//  8:         321.00 |########################
//  9:          89.00 |######
// 10:   MIN    14.00 |
// 11:         182.00 |#############
// 12:         164.00 |############
// 13:         156.00 |###########
// 14:         169.00 |############
//01234567890123456789
//|    | |     |       |
//|    | |     |       +-> Each bar is (price-min)/plot_step hashes wide
//|    | |     +-> Stock price printed with format %8.2f
//|    | +-> Print MIN or MAX if the stock is at min_index/max_index
//|    +-> Print B or S if the stock is at the best_buy/best_sell index
//+--> Index in the array printed with format %3d
void stock_plot(stock_t *stock, int max_width){
  printf("max_width: %d\n", max_width);

  double range = stock->prices[stock->max_index] - stock->prices[stock->min_index];
  double plot_step = range / max_width;

  printf("range:  %8.2f\n", range);
  printf("plot step: %.2f\n", plot_step);
  
  for(int i = 0; i < max_width; i++){
    if(i == 0){
      printf("              +");
    }
    printf("-");
  }
  

  for(int i = 0; i < stock->count; i++){
    
    
    int pounds = (stock->prices[i] - stock->prices[stock->min_index]) / plot_step;

    if(i == stock->min_index){
      if(i == stock->best_buy){
        printf("\n%3d: B MIN %6.2f |", i, stock->prices[i]);
      } else{
        printf("\n%3d: MIN%8.2f |", i, stock->prices[i]);
      }
      
      for(int j = 0; j < pounds; j++){
        printf("#");
     }
    }

    else if(i == stock->best_buy){  
      printf("\n%3d: B%8.2f |", i, stock->prices[i]);
      for(int j = 0; j < pounds; j++){
        printf("#");
     }
    }

    else if(i == stock->max_index){
      if(i == stock->best_sell){
        printf("\n%3d: S MAX%8.2f |", i, stock->prices[i]);
      } else {
        printf("\n%3d: MAX%8.2f |", i, stock->prices[i]);
      }
      
      for(int j = 0; j < pounds; j++){
        printf("#");
    }
    }

    else if(i == stock->best_sell){
      printf("\n%3d: S%8.2f |", i, stock->prices[i]);
      for(int j = 0; j < pounds; j++){
        printf("#");
     }
    }

    else{
      printf("\n%3d:    %8.2f |", i, stock->prices[i]);
     for(int j = 0; j < pounds; j++){
       printf("#");
      }
    }

    

  }
  printf("\n");
  return;
}
  
