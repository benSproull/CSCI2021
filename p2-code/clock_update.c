#include "clock.h"
#include "stdio.h"

int set_tod_from_ports(tod_t *tod){
    if (TIME_OF_DAY_PORT < 0 || TIME_OF_DAY_PORT > 1382400){
        return 1;
    }
    else{
        tod->day_secs = TIME_OF_DAY_PORT/16;
        double temp = (double) TIME_OF_DAY_PORT / 16;
        if(temp >= (tod->day_secs + 0.5)){
            tod->day_secs += 1;
        }        

        tod->time_hours = ((tod->day_secs/3600)%12);
        tod->time_mins = (tod->day_secs/60 %60);
        tod->time_secs = (tod->day_secs%60);
        
        tod->ampm = (tod->day_secs/43200) + 1;
        
        if(tod->time_hours == 0){
            tod->time_hours = 12;
        }
        if(tod->day_secs == 0){
            tod->ampm = 1;
            tod->time_hours = 12;
        } 

        return 0;
    }
}
// Reads the time of day from the TIME_OF_DAY_PORT global variable. If
// the port's value is invalid (negative or larger than 16 times the
// number of seconds in a day) does nothing to tod and returns 1 to
// indicate an error. Otherwise, this function uses the port value to
// calculate the number of seconds from start of day (port value is
// 16*number of seconds from midnight). Rounds seconds up if there at
// least 8/16 have passed. Uses shifts and masks for this calculation
// to be efficient. Then uses division on the seconds since the
// begining of the day to calculate the time of day broken into hours,
// minutes, seconds, and sets the AM/PM designation with 1 for AM and
// 2 for PM. By the end, all fields of the `tod` struct are filled in
// and 0 is returned for success.
 // 
// CONSTRAINT: Uses only integer operations. No floating point
// operations are used as the target machine does not have a FPU.
// 
// CONSTRAINT: Limit the complexity of code as much as possible. Do
// not use deeply nested conditional structures. Seek to make the code
// as short, and simple as possible. Code longer than 40 lines may be
// penalized for complexity.

int set_display_from_tod(tod_t tod, int *display){


    if(tod.time_hours > 12 || tod.time_hours < 0 || tod.time_mins > 59 || tod.time_mins < 0 || tod.time_secs > 59 || tod.time_secs < 0){
        return 1;
    }
                //   Zero       One        Two       Three      Four        Five       Six       Seven      Eight       Nine      Blank     Negative
    int num_arr[] = {0b1110111, 0b0100100, 0b1011101, 0b1101101, 0b0101110, 0b1101011, 0b1111011, 0b0100101, 0b1111111, 0b1101111, 0b0000000, 0b0001000};
    int clock_display = 0b0000000;                  // initialized clock_display
    int am = 0b0000001;
    int pm = 0b0000010;

    if(tod.ampm == 1){
        clock_display |= am << 28;
        *display = clock_display;
    } else{
        clock_display |= pm << 28;
        *display = clock_display;
    }
                                                    // gets a value 0 - 9 for each number
    int ten_hour = tod.time_hours / 10;
    int one_hour = tod.time_hours % 10;
    int ten_min = tod.time_mins / 10;
    int one_min = tod.time_mins % 10;

    if (ten_hour == 0){
        clock_display |= 0b0000000 << 21;
        *display = clock_display;
    } else {
        clock_display |= num_arr[ten_hour] << 21;
        *display = clock_display;
    }

    clock_display |= num_arr[one_hour] << 14;
    *display = clock_display;
    clock_display |= num_arr[ten_min] << 7;
    *display = clock_display;
    clock_display |= num_arr[one_min] << 0;
    *display = clock_display;

    return 0;
}
// Accepts a tod and alters the bits in the int pointed at by display
// to reflect how the LCD clock should appear. If any time_** fields
// of tod are negative or too large (e.g. bigger than 12 for hours,
// bigger than 59 for min/sec) or if the AM/PM is not 1 or 2, no
// change is made to display and 1 is returned to indicate an
// error. The display pattern is constructed via shifting bit patterns
// representing digits and using logical operations to combine them.
// May make use of an array of bit masks corresponding to the pattern
// for each digit of the clock to make the task easier.  Returns 0 to
// indicate success. This function DOES NOT modify any global
// variables
// 
// CONSTRAINT: Limit the complexity of code as much as possible. Do
// not use deeply nested conditional structures. Seek to make the code
// as short, and simple as possible. Code longer than 85 lines may be
// penalized for complexity.

int clock_update(){
    tod_t tod;
    if(TIME_OF_DAY_PORT < 0 || TIME_OF_DAY_PORT > 1382400){   // Base case check
        return 1;
    } else {                                                  // calls previous functions
        set_tod_from_ports(&tod);   
        set_display_from_tod(tod, &CLOCK_DISPLAY_PORT);
        return 0;
    }
    
}
// Examines the TIME_OF_DAY_PORT global variable to determine hour,
// minute, and am/pm.  Sets the global variable CLOCK_DISPLAY_PORT bits
// to show the proper time.  If TIME_OF_DAY_PORT appears to be in error
// (to large/small) makes no change to CLOCK_DISPLAY_PORT and returns 1
// to indicate an error. Otherwise returns 0 to indicate success.
//
// Makes use of the previous two functions: set_tod_from_ports() and
// set_display_from_tod().
// 
// CONSTRAINT: Does not allocate any heap memory as malloc() is NOT
// available on the target microcontroller.  Uses stack and global
// memory only.