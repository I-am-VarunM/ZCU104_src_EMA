/*
 * threshold.c
 *
 *  Created on: Apr 27, 2020
 *      Author: Carina
 */

#include "threshold.h"

#define THRESHOLD DIFF_THRESHOLD

int compare_with_threshold(double value) {
    if (value > THRESHOLD){
       return 1;
    }else{
        return 0;
    }
    return 0;
}
