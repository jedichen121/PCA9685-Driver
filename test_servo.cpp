#include "PCA9685.h"
#include <stdio.h>
#include <unistd.h>

int main () {
    printf ("Testing testing\n");
    //make sure you use the right address values.
    PCA9685 pwm;
    pwm.init(1,0x40);
    usleep(1000 * 100);
    printf ("Setting frequency..\n");
    pwm.setPWMFreq (60);
    usleep(1000 * 1000);

    int count = 0;
    while (count++ < 1) {
        printf ("Round %d\n", count);
        pwm.setPWM(1,0,290);    
        usleep(1000 * 1000);
        pwm.setPWM(1,0,450);
        usleep(1000 * 1000);
    }
    printf ("finished\n");
    pwm.setPWM(1,0,350);
    usleep(1000 * 100);
    return 0;
} 
