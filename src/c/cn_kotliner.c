//
// Created by benny on 4/14/17.
//

#include "cn_kotliner.h"
#include <stdio.h>

void printHello(){
    printf("[C]HelloWorld\n");
}

int factorial(int n){
    printf("[C]calc factorial: %d\n", n);
    if(n == 0) return 1;
    return n * factorial(n - 1);
}