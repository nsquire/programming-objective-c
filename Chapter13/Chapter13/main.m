//
//  main.m
//  Chapter13
//
//  Created by Nicholas Squire on 7/31/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

// 5.
#define Date struct { int month; int day; int year; }


#import <Foundation/Foundation.h>

#import "Fraction.h"

// 1. Write a function that calculates the average of an array of 10 floating-point values and returns the result.
float average (float array[]);
float average (float array[])
{
    float average = 0.0, sum = 0.0, *ptr;
    
    float *arrayEnd = array + 10;
    
    for (ptr = array; ptr < arrayEnd; ++ptr)
    {
        sum += *ptr;
    }
    
    average = sum / 10.0;
    return average;
}

// 3. Sieve of Erastosthenes
void getPrimes(int n);
void getPrimes(int n)
{
    int p[n];
    
    int i = 2;
    
    // step 1
    for (; i <= n; ++i)
        p[i] = 0;
    
    // step 2
    i = 2;
    
    while (1) {
        // step 3
        if (i > n)
            break;
        
        // step 4
        if (p[i] == 0)
            NSLog(@"%i", i);
        
        // step 5
        for (int j = 1; i * j <= n; ++j)
        {
            p[i * j] = 1;
        }
        
        // step 6
        i += 1;
    }
}

// 4.
Fraction* addFractions(__strong Fraction * values[], int n);
Fraction* addFractions(__strong Fraction * values[], int n)
{
    Fraction *result = [[Fraction alloc] init];
    result = *values;
    
    for (int i = 1; i < n; ++i)
    {
        result = [result add: *(values + i)];
    }
    
    return result;

}

// 10.
void exchange (int *pint1, int *pint2)
{
    int temp;
    temp = *pint1;
    *pint1 = *pint2;
    *pint2 = temp;
}


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // #1
        float values[10] = { 3, 7, -9, 3, 6, -1, 7, 9, 1, -5 };
        NSLog (@"The average is %f", average (values));
        
        // #2
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        
        Fraction *resultFraction;
        
        [aFraction setTo: 1 over: 4]; // set 1st fraction to 1/4
        [bFraction setTo: 1 over: 2]; // set 2nd fraction to 1/2
        
        [aFraction print];
        NSLog (@"+");
        
        [bFraction print];
        NSLog (@"=");
        
        resultFraction = [aFraction add: bFraction];
        [resultFraction print];
        
        // #3
        
        getPrimes(150);
        
        // #4
        
        Fraction *myFraction1 = [[Fraction alloc] init];
        [myFraction1 setTo:1 over:10];
        
        Fraction *myFraction2 = [[Fraction alloc] init];
        [myFraction2 setTo:2 over:10];
        
        Fraction *myFraction3 = [[Fraction alloc] init];
        [myFraction3 setTo:3 over:10];
        
        Fraction *myFraction4 = [[Fraction alloc] init];
        [myFraction4 setTo:1 over:10];
        
        Fraction *fractions[] = { myFraction1, myFraction2, myFraction3, myFraction4 };
        Fraction *addResult = addFractions(fractions, 4);
        
        // display the result
        NSLog (@"The added fractions equal:");
        [addResult print];
        
        // #5
        Date todaysDate;
        
        // #7
        char *message = "Programming in Objective-C is fun";
        char message2[] = "You said it";
        int x = 100;
        
        /*** set 1 ***/
        NSLog (@"Programming in Objective-C is fun");
        NSLog (@"%s", "Programming in Objective-C is fun");
        NSLog (@"%s", message);
        
        /*** set 2 ***/
        NSLog (@"You said it");
        NSLog (@"%s", message2);
        NSLog (@"%s", &message2[0]);
        
        /*** set 3 ***/
        NSLog (@"said it");
        NSLog (@"%s", message2 + 4);
        NSLog (@"%s", &message2[4]);
        
        // #8
        if (argc < 2)
        {
            NSLog(@"No word typed into the command line");
            return (1);
        }
        
        for (int i = 2, j = 1; i <= argc; ++i, ++j)
        {
            NSLog(@"%s", argv[j]);
        }
        
        // #9
        NSLog (@"This is a test");
        //NSLog ("This is a test");
        NSLog (@"%s", "This is a test");
        //NSLog (@"%s", @"This is a test");
        //NSLog ("%s", "This is a test");
        //NSLog ("%s", @"This is a test");
        NSLog (@"%@", @"This is a test");
        //NSLog (@"%@", "This is a test");
        
        // #10
        void (^exchange2)(int *, int *) =
        ^(int *pint1, int *pint2) {
            int temp;
            temp = *pint1;
            *pint1 = *pint2;
            *pint2 = temp;
        };
        
        void exchange (int *pint1, int *pint2);
        int i1 = -5, i2 = 66, *p1 = &i1, *p2 = &i2;
        
        NSLog (@"i1 = %i, i2 = %i", i1, i2);
        exchange2 (p1, p2);
        NSLog (@"i1 = %i, i2 = %i", i1, i2);
        
        
        
    }
    return 0;
}

