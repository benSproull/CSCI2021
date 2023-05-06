// Updated: Tue Sep 28 03:12:57 PM CDT 2021 

#include "stock.h"

#define PRINT_TEST sprintf(sysbuf,"awk 'NR==(%d+1){P=1;print \"{\"} P==1 && /ENDTEST/{P=0; print \"}\"} P==1{print}' %s", __LINE__, __FILE__); \
                   system(sysbuf);

void print_int_array(int *arr, int length){
  printf("[");
  for(int i=0; i<length-1; i++){
    printf("%2d, ",arr[i]);
  }
  if(length > 0){
    printf("%2d",arr[length-1]);
  }
  printf("]");
}

int main(int argc, char *argv[]){
  if(argc < 2){
    printf("usage: %s <test_name>\n", argv[0]);
    return 1;
  }
  char *test_name = argv[1];
  char sysbuf[1024];

  if(0){}

  ////////////////////////////////////////////////////////////////////////////////
  // Problem 1 Tests
  else if( strcmp( test_name, "stock_new" )==0 ) {
    PRINT_TEST;
    // Tests stock_new() function and whether it initializes fields
    // correctly before returning a stock.

    stock_t *stock = stock_new(); // call function to allocate/init

    printf("stock->data_file: %p\n" , stock->data_file);
    printf("stock->count:     %d\n" , stock->count);
    printf("stock->prices:    %p\n" , stock->prices);
    printf("stock->min_index: %d\n" , stock->min_index);
    printf("stock->max_index: %d\n" , stock->max_index);
    printf("stock->best_buy:  %d\n" , stock->best_buy);
    printf("stock->best_sell: %d\n" , stock->best_sell);

    free(stock);                // de-allocate manually
  } // ENDTEST

  else if( strcmp( test_name, "stock_free1" )==0 ) {
    PRINT_TEST;
    // Tests stock_free() function and whether it frees a stock
    // allocated by stock_new() correctly

    printf("Allocating with stock_new()\n");
    stock_t *stock = stock_new(); // call function to allocate/init

    if(stock == NULL){
      printf("ERROR: got a NULL pointer from stock_new()\n");
    }
    else{
      printf("De-allocating with stock_free()\n");
      stock_free(stock);
      printf("Complete\n");
    }
  } // ENDTEST

  else if( strcmp( test_name, "stock_free2" )==0 ) {
    PRINT_TEST;
    // Tests whether stock_free() correctly free()'s the 'data_file'
    // field if it is set after using stock_new(). Valgrind will
    // report leaked memory if free() is not called on
    // 'stock->data_file'.

    printf("Allocating with stock_new()\n");
    stock_t *stock = stock_new(); // call function to allocate/init

    printf("Assigning data_file field fresh memory\n");
    stock->data_file = malloc(sizeof(char) * 20);
    strcpy(stock->data_file, "some-file-name.txt");

    printf("De-allocating with stock_free()\n");
    stock_free(stock);

    printf("Complete\n");
  } // ENDTEST

  else if( strcmp( test_name, "stock_free3" )==0 ) {
    PRINT_TEST;
    // Tests whether stock_free() correctly free()'s the 'prices' field
    // if it is set after using stock_new(). Valgrind will report
    // leaked memory if free() is not called on 'stock->prices'.

    printf("Allocating with stock_new()\n");
    stock_t *stock = stock_new(); // call function to allocate/init

    printf("Assigning prices field fresh memory\n");
    stock->prices = malloc(sizeof(double) * 5);
    double prices[5] = {10.0, 5.0, 15.0, 20.0, 5.0};
    memcpy(stock->prices, prices, sizeof(double)*5);  // copies to prices

    printf("De-allocating with stock_free()\n");
    stock_free(stock);

    printf("Complete\n");
  } // ENDTEST

  else if( strcmp( test_name, "stock_free4" )==0 ) {
    PRINT_TEST;
    // Tests whether stock_free() correctly free()'s the 'data_file'
    // and 'prices' fields if they are non-NULL.

    printf("Allocating with stock_new()\n");
    stock_t *stock = stock_new(); // call function to allocate/init

    printf("Assigning prices field fresh memory\n");
    stock->prices = malloc(sizeof(double) * 5);

    printf("Assigning data_file field fresh memory\n");
    stock->data_file = strdup("another-file-name-of-some-sort.txt");

    printf("De-allocating with stock_free()\n");
    stock_free(stock);

    printf("Complete\n");
  } // ENDTEST

  else if( strcmp( test_name, "stock_print1" )==0 ) {
    PRINT_TEST;
    // Tests whether stock_print() correctly prints a freshly
    // allocated stock after stock_new().

    stock_t *stock = stock_new();
    stock_print(stock);
    stock_free(stock);
  } // ENDTEST

  else if( strcmp( test_name, "stock_print2" )==0 ) {
    PRINT_TEST;
    // Allocates a stack-based stock and checks for correct
    // printing. No free-ing is requred in this case.

    stock_t stock = {
      .data_file = NULL,
      .count = -1,
      .prices = NULL,
      .min_index = -1,
      .max_index = -1,
      .best_buy  = -1,
      .best_sell = -1,
    };
    stock_print(&stock);
  } // ENDTEST

  else if( strcmp( test_name, "stock_print3" )==0 ) {
    PRINT_TEST;
    // Allocates a stack-based stock then fills in some values for it
    // and checks for correct printing. The prices array has 5
    // elements so checks for correct printing of the first 3 elements
    // plus the ... elipses.

    double prices[5] = {10.0, 5.0, 15.0, 20.0, 5.0};

    stock_t stock = {
      .data_file = "a-data-file.txt",
      .count = 5,
      .prices = prices,
      .min_index = -1,
      .max_index = -1,
      .best_buy  = -1,
      .best_sell = -1,
    };
    stock_print(&stock);
  } // ENDTEST

  else if( strcmp( test_name, "stock_print4" )==0 ) {
    PRINT_TEST;
    // Same as previous test but also sets min/max index and checks
    // for correct printing.

    double prices[5] = {10.0, 5.0, 15.0, 20.0, 5.0};

    stock_t stock = {
      .data_file = "another-data-file.txt",
      .count = 5,
      .prices = prices,
      .min_index = 1,
      .max_index = 3,
      .best_buy  = -1,
      .best_sell = -1,
    };
    stock_print(&stock);
  } // ENDTEST

  else if( strcmp( test_name, "stock_print5" )==0 ) {
    PRINT_TEST;
    // Same as previous test but also sets best buy/sell index and
    // checks for correct printing. This should give a non-zero profit
    // as well.

    double prices[5] = {10.0, 5.0, 15.0, 20.0, 5.0};

    stock_t stock = {
      .data_file = "more-stock-data.txt",
      .count = 5,
      .prices = prices,
      .min_index = 1,
      .max_index = 3,
      .best_buy  = 1,
      .best_sell = 3,
    };
    stock_print(&stock);
  } // ENDTEST

  else if( strcmp( test_name, "stock_print_prices_0" )==0 ) {
    PRINT_TEST;
    // Checks that printing is correct for a 0-count 0-length price
    // array. This should be printed specially as [].
    double prices[0] = {};

    stock_t stock = {
      .data_file = "some-file.txt",
      .count = 0,
      .prices = prices,
      .min_index = -1,
      .max_index = -1,
      .best_buy  = -1,
      .best_sell = -1,
    };
    stock_print(&stock);
  } // ENDTEST

  else if( strcmp( test_name, "stock_print_prices_1" )==0 ) {
    PRINT_TEST;
    // Checks printing 1-length prices array is correct.
    double prices[1] = {45.25};

    stock_t stock = {
      .data_file = "some-file.txt",
      .count = 1,
      .prices = prices,
      .min_index = -1,
      .max_index = -1,
      .best_buy  = -1,
      .best_sell = -1,
    };
    stock_print(&stock);
  } // ENDTEST

  else if( strcmp( test_name, "stock_print_prices_2" )==0 ) {
    PRINT_TEST;
    // Checks printing 2-length prices array is correct.
    double prices[2] = {45.25, 32.37};

    stock_t stock = {
      .data_file = "some-file.txt",
      .count = 2,
      .prices = prices,
      .min_index = -1,
      .max_index = -1,
      .best_buy  = -1,
      .best_sell = -1,
    };
    stock_print(&stock);
  } // ENDTEST

  else if( strcmp( test_name, "stock_print_prices_3" )==0 ) {
    PRINT_TEST;
    // Checks printing 3-length prices array is correct.
    double prices[3] = {45.25, 32.37, 40.99};

    stock_t stock = {
      .data_file = "some-file.txt",
      .count = 3,
      .prices = prices,
      .min_index = -1,
      .max_index = -1,
      .best_buy  = -1,
      .best_sell = -1,
    };
    stock_print(&stock);
  } // ENDTEST

  else if( strcmp( test_name, "stock_print_final" )==0 ) {
    PRINT_TEST;
    // Checks printing is correct for a more complex stock that is
    // allocated/free'd using standard functions.
    double prices[10] = {
      125.72, 190.04, 45.25, 32.37, 40.99, 
      168.00, 16.03, 14.11, 50.00, 96.89,
    };
    stock_t *stock = stock_new();

    stock->data_file = strdup("bouncy-prices.txt");
    stock->count = 10;
    stock->prices = malloc(sizeof(double)*10);
    memcpy(stock->prices, prices, sizeof(double)*10);
    stock->min_index = 7;
    stock->max_index = 2;
    stock->best_buy  = 3;
    stock->best_sell = 5;

    stock_print(stock);

    stock_free(stock);
  } // ENDTEST
  
  ////////////////////////////////////////////////////////////////////////////////
  // Problem 2 Tests

  else if( strcmp( test_name, "stock_set_minmax1" )==0 ) {
    PRINT_TEST;
    // Checks if stock_set_minmax() correctly sets the min_index and
    // max_index fields in a small prices array
    double prices[5] = {
      168.00, 16.03, 14.11, 50.00, 96.89,
    };
    stock_t stock = {
      .data_file = "5prices.txt",
      .count = 5,
      .prices = prices,
      .min_index = -1,
      .max_index = -1,
      .best_buy  = -1,
      .best_sell = -1,
    };
    stock_set_minmax(&stock);

    stock_print(&stock);
  } // ENDTEST

  else if( strcmp( test_name, "stock_set_minmax2" )==0 ) {
    PRINT_TEST;
    // Checks if stock_set_minmax() correctly sets the min_index and
    // max_index fields in a larger prices array
    double prices[10] = {
      125.72, 190.04, 45.25, 32.37, 40.99, 
      168.00, 16.03, 14.11, 50.00, 96.89,
    };
    stock_t *stock = stock_new();

    stock->data_file = strdup("bouncy-prices.txt");
    stock->count = 10;
    stock->prices = malloc(sizeof(double)*10);
    memcpy(stock->prices, prices, sizeof(double)*10);
    stock->min_index = -1;
    stock->max_index = -1;
    stock->best_buy  = -1;
    stock->best_sell = -1;

    stock_set_minmax(stock);
    stock_print(stock);

    stock_free(stock);
  } // ENDTEST

  else if( strcmp( test_name, "stock_set_minmax3" )==0 ) {
    PRINT_TEST;
    // Checks behavior of stock_set_minmax() in length 0 and length 1
    // arrays
    double prices0[0] = {};
    stock_t stock0 = {
      .data_file = "0prices.txt",
      .count = 0,
      .prices = prices0,
      .min_index = -1,
      .max_index = -1,
      .best_buy  = -1,
      .best_sell = -1,
    };
    stock_set_minmax(&stock0);
    stock_print(&stock0);

    double prices1[1] = {123.45};
    stock_t stock1 = {
      .data_file = "1prices.txt",
      .count = 1,
      .prices = prices1,
      .min_index = -1,
      .max_index = -1,
      .best_buy  = -1,
      .best_sell = -1,
    };
    stock_set_minmax(&stock1);
    stock_print(&stock1);
  } // ENDTEST

  else if( strcmp( test_name, "stock_set_best1" )==0 ) {
  {
    PRINT_TEST;
    // Checks for correct setting of best buy/sell point which aligns
    // with the stock min/max prices in this test
    double prices[9] = {
      45.0, 35.0, 25.0, 15.0, 5.0,
      10.0, 20.0, 30.0, 7.0,
    };
    stock_t stock = {
      .data_file = "prices.txt",
      .count = 9,
      .prices = prices,
      .min_index = -1,
      .max_index = -1,
      .best_buy  = -1,
      .best_sell = -1,
    };
    int ret = stock_set_best(&stock);
    stock_set_minmax(&stock);
    printf("ret: %d\n", ret);
    stock_print(&stock);
  } // ENDTEST

  {
    PRINT_TEST;
    // Checks for correct setting of best buy/sell point; in this case
    // the best buy does not match the minimum price but the best sell
    // point does match the maximum
    double prices[10] = {
      30.0, 20.0, 30.0, 40.0, 50.0,
      45.0, 35.0, 25.0, 15.0, 5.0,
    };
    stock_t stock = {
      .data_file = "prices.txt",
      .count = 10,
      .prices = prices,
      .min_index = -1,
      .max_index = -1,
      .best_buy  = -1,
      .best_sell = -1,
    };
    int ret = stock_set_best(&stock);
    stock_set_minmax(&stock);
    printf("ret: %d\n", ret);
    stock_print(&stock);
  } // ENDTEST
  }

  else if( strcmp( test_name, "stock_set_best2" )==0 ) {
    PRINT_TEST;
    // Checks for correct setting of best buy/sell point; in this case
    // the best buy does matches the minimum price but the best sell
    // point does not match the maximum
    double prices[13] = {
      50.0, 45.0, 25.0, 10.0, 12.0,
      15.0, 35.0, 34.0, 18.5, 16.5,
      15.5, 10.5,
    };
    stock_t stock = {
      .data_file = "prices.txt",
      .count = 13,
      .prices = prices,
      .min_index = -1,
      .max_index = -1,
      .best_buy  = -1,
      .best_sell = -1,
    };
    int ret = stock_set_best(&stock);
    stock_set_minmax(&stock);
    printf("ret: %d\n", ret);
    stock_print(&stock);
  } // ENDTEST

  else if( strcmp( test_name, "stock_set_best3" )==0 ) {
    PRINT_TEST;
    // Checks for correct setting of best buy/sell point; in this case
    // the best buy/sell do not match the min/max price
    double prices[13] = {
      50.0, 45.0, 10.0, 12.0, 13.0,
      15.0, 35.0, 39.0, 18.5, 16.5,
      15.5, 10.5, 8.5
    };
    stock_t stock = {
      .data_file = "prices.txt",
      .count = 13,
      .prices = prices,
      .min_index = -1,
      .max_index = -1,
      .best_buy  = -1,
      .best_sell = -1,
    };
    int ret = stock_set_best(&stock);
    stock_set_minmax(&stock);
    printf("ret: %d\n", ret);
    stock_print(&stock);
  } // ENDTEST

  else if( strcmp( test_name, "stock_set_best4" )==0 ) {
    PRINT_TEST;
    // Checks that when there is no profitable time to buy/sell
    // (profit of 0.0), then the best_buy / best_sell are set to -1
    // and the function returns -1
    double prices[8] = {
      50.0, 45.0, 30.0, 22.0, 18.0,
      15.0, 10.5, 8.5,
    };
    stock_t stock = {
      .data_file = "prices.txt",
      .count = 8,
      .prices = prices,
      .min_index = -1,
      .max_index = -1,
      .best_buy  = 0,
      .best_sell = 0,
    };
    int ret = stock_set_best(&stock);
    stock_set_minmax(&stock);
    printf("ret: %d\n", ret);
    stock_print(&stock);
  } // ENDTEST

  else if( strcmp( test_name, "count_lines" )==0 ) {
  {
    PRINT_TEST;
    // Checks several calls to count_lines() on different files in the
    // data/ directory.  This directory must be present with the
    // provided data files for the tests to work correctly.
    int ret = count_lines("data/stock-3only.txt");
    printf("ret: %d\n", ret);
  } // ENDTEST
  {
    PRINT_TEST;
    int ret = count_lines("data/stock-ascending.txt");
    printf("ret: %d\n", ret);
  } // ENDTEST
  {
    PRINT_TEST;
    int ret = count_lines("data/stock-FB-08-02-2021.txt");
    printf("ret: %d\n", ret);
  } // ENDTEST
  {
    PRINT_TEST;
    int ret = count_lines("data/stock-empty.txt");
    printf("ret: %d\n", ret);
  } // ENDTEST
  {
    PRINT_TEST;
    int ret = count_lines("data/not-there.txt");
    printf("ret: %d\n", ret);
  } // ENDTEST
  }

  else if( strcmp( test_name, "stock_load1" )==0 ) {
    PRINT_TEST;
    // Checks stock_load() on a small data file to determine if it
    // correctly loads a small number of prices into an existing
    // stock.
    stock_t *stock = stock_new();
    int ret = stock_load(stock, "data/stock-3only.txt");
    printf("ret: %d\n", ret);
    stock_print(stock);
    stock_free(stock);
  } // ENDTEST

  else if( strcmp( test_name, "stock_load2" )==0 ) {
    PRINT_TEST;
    // Checks loading a stock file via stock_load() on a file in the
    // data/ directory.  This directory must be present with the
    // provided data files for the tests to work correctly.
    stock_t *stock = stock_new();
    int ret = stock_load(stock, "data/stock-jagged.txt");
    printf("ret: %d\n", ret);
    stock_print(stock);
    stock_free(stock);
  } // ENDTEST

  else if( strcmp( test_name, "stock_load3" )==0 ) {
    PRINT_TEST;
    // Checks loading a stock file via stock_load() on a file in the
    // data/ directory.  This directory must be present with the
    // provided data files for the tests to work correctly.
    stock_t *stock = stock_new();
    int ret = stock_load(stock, "data/stock-GOOG-08-02-2021.txt");
    printf("ret: %d\n", ret);
    stock_print(stock);
    stock_free(stock);
  } // ENDTEST

  else if( strcmp( test_name, "stock_load_1price" )==0 ) {
    PRINT_TEST;
    // stock_load() calls on price arrays of 1 
    stock_t *stock = stock_new();
    int ret = stock_load(stock, "data/stock-1only.txt");
    printf("ret: %d\n", ret);
    stock_print(stock);
    stock_free(stock);
  } // ENDTEST

  else if( strcmp( test_name, "stock_load_empty" )==0 ) {
    PRINT_TEST;
    // Load a completely empty stock file - should give count of 0 and
    // an empty prices array.
    stock_t *stock = stock_new();
    int ret = stock_load(stock, "data/stock-empty.txt");
    printf("ret: %d\n", ret);
    stock_print(stock);
    stock_free(stock);
  } // ENDTEST

  else if( strcmp( test_name, "stock_load_no_file" )==0 ) {
    PRINT_TEST;
    // Attempt to load a non-existent file which should fail and leave
    // the stock struct un-altered.
    stock_t *stock = stock_new();
    int ret = stock_load(stock, "data/not-there.txt");
    printf("ret: %d\n", ret);
    stock_print(stock);
    stock_free(stock);
  } // ENDTEST

  else if( strcmp( test_name, "stock_plot1" )==0 ) {
    PRINT_TEST;
    // Plots a stock with a small prices array that is NOT loaded from
    // a file with a couple different widths. Prices and max_width are
    // selected for an integer (non-fraction) plot step.
    double prices[6] = {5.0, 15.0, 0.0, 10.0, 25.0, 20.0};
    stock_t stock = {
      .data_file = "a-data-file.txt",
      .count = 6,
      .prices = prices,
      .min_index = 2,
      .max_index = 4,
      .best_buy  = -1,
      .best_sell = -1,
    };
    stock_plot(&stock, 5);
    printf("\n");
    stock_plot(&stock, 25);
  } // ENDTEST

  else if( strcmp( test_name, "stock_plot2" )==0 ) {
    PRINT_TEST;
    // Similar to previous test but this time with non-integer plot
    // step for bars.
    double prices[5] = {5.0, 25.0, 10.0, 0.0, 15.0};
    stock_t stock = {
      .data_file = "b-data-file.txt",
      .count = 5,
      .prices = prices,
      .min_index = 3,
      .max_index = 1,
      .best_buy  = -1,
      .best_sell = -1,
    };
    stock_plot(&stock, 6);
    printf("\n");
    stock_plot(&stock, 12);
  } // ENDTEST


  else if( strcmp( test_name, "stock_plot3" )==0 ) {
    PRINT_TEST;
    // Check if min/max indices are printed correctly, no best
    // buy/sell indices set.
    double prices[7] = {5.0, 15.0, 0.0, 10.0, 25.0, 20.0, 17.0};
    stock_t stock = {
      .data_file = "c-data-file.txt",
      .count = 7,
      .prices = prices,
      .min_index = 2,
      .max_index = 4,
      .best_buy  = -1,
      .best_sell = -1,
    };
    stock_plot(&stock, 5);
    printf("\n");
    stock_plot(&stock, 25);
  } // ENDTEST

  else if( strcmp( test_name, "stock_plot4" )==0 ) {
    PRINT_TEST;
    // Min/max indices and best buy/sell indices are all set.
    double prices[5] = {5.0, 25.0, 10.0, 0.0, 15.0};
    stock_t stock = {
      .data_file = "b-data-file.txt",
      .count = 5,
      .prices = prices,
      .min_index = 3,
      .max_index = 1,
      .best_buy  = 0,
      .best_sell = 1,
    };
    stock_plot(&stock, 10);
    printf("\n");
    stock_plot(&stock, 15);
  } // ENDTEST

  else if( strcmp( test_name, "stock_plot5" )==0 ) {
    PRINT_TEST;
    // Loads a couple stocks from files and checks if they are printed
    // correctly.
    stock_t *stock = stock_new();
    int ret = stock_load(stock,"data/stock-valley.txt");
    printf("ret: %d\n",ret);
    stock_set_minmax(stock);
    stock_set_best(stock);
    stock_print(stock);
    stock_plot(stock, 10);
    stock_free(stock);
  } // ENDTEST

  else if( strcmp( test_name, "stock_plot6" )==0 ) {
    PRINT_TEST;
    stock_t *stock = stock_new();
    int ret = stock_load(stock,"data/stock-min-after-max.txt");
    printf("ret: %d\n",ret);
    stock_set_minmax(stock);
    stock_set_best(stock);
    stock_print(stock);
    stock_plot(stock, 10);
    stock_free(stock);
  } // ENDTEST

//     double prices[10] = {
// 358.99, 358.70, 358.58, 358.25, 358.00, 358.23, 358.19,
// 358.26, 358.19, 358.23, 358.22, 358.40, 358.40, 358.47,
// 358.40, 358.43, 358.30, 358.33, 358.41, 358.45, 358.35,
// 358.35, 358.40, 358.00, 358.14, 358.00, 358.12, 358.11,
    // };

  else{
    printf("No test named '%s' found\n",test_name);
    return 1;
  }
  return 0;
}
