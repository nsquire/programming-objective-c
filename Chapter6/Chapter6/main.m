//
//  main.m
//  Chapter6
//
//  Created by Nicholas Squire on 6/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator: NSObject

// accumulator methods
-(void) setAccumulator: (double) value; 
-(void) clear;
-(double) accumulator;

// arithmetic methods
-(void) add: (double) value; 
-(void) subtract: (double) value; 
-(void) multiply: (double) value; 
-(void) divide: (double) value; 

@end

@implementation Calculator 

{
    double accumulator; 
}

-(void) setAccumulator: (double) value 
{
    accumulator = value; 
}

-(void) clear 
{
    accumulator = 0;
}

-(double) accumulator 
{
    return accumulator; 
}

-(void) add: (double) value 
{
    accumulator += value; 
}

-(void) subtract: (double) value 
{
    accumulator -= value; 
}

-(void) multiply: (double) value 
{
    accumulator *= value; 
}

-(void) divide: (double) value 
{
    accumulator /= value; 
}

@end




//---- @interface section ----
@interface PrintingCalculator: NSObject

-(void) start: (double) value: (char) operator; 

@end

//---- @implementation section ----
@implementation PrintingCalculator
{
    // instance variables
}

-(void) start: (double) value: (char) operator
{
    if ( operator == 'S')
    {
        Calculator *myCalculator = [[Calculator alloc] init];
        [myCalculator setAccumulator: value]; 
        
        while ( operator != 'E') {
            switch ( operator ) 
            { 
                case 'S':
                    [myCalculator setAccumulator: value];
                    break; 
                case '+':
                    [myCalculator add: value];
                    break; 
                case '-':
                    [myCalculator subtract: value];
                    break; 
                case '*':
                    [myCalculator multiply: value];
                    break; 
                case '/':
                    if ( value == 0 ) 
                        NSLog(@"Cannot divide by zero");
                    else
                        [myCalculator divide: value];
                    break;
                default:
                    NSLog (@"Unknown operator."); 
                    break;
            }
            
            NSLog (@"= %lf", [myCalculator accumulator]);
            
            scanf ("%lf %c", &value, &operator);
        }
        NSLog (@"= %lf", [myCalculator accumulator]);
    } 
    else
    {
        NSLog (@"Must use operator S initially");
    }
}

@end




//---- @interface section ----
@interface Fraction: NSObject

-(void) print;
-(void) setNumerator: (int) n; 
-(void) setDenominator: (int) d;

@end

//---- @implementation section ----
@implementation Fraction 
{
    int numerator;
    int denominator; 
}

-(void) print 
{
    if ( numerator % denominator == 0 ) 
    {
        NSLog(@"%i", numerator / denominator);
    } 
    else if ( numerator == 0 )
    {
        NSLog(@"0");
    } 
    else
    {
        NSLog(@"%i/%i", numerator, denominator);
    }
}

-(void) setNumerator: (int) n 
{
    numerator = n; 
}

-(void) setDenominator: (int) d 
{
    denominator = d; 
}

@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // #1
        
        /*
         
        int a, b;
        NSLog(@"Enter two numbers");
        scanf("%i %i", &a, &b);
        
        if (a % b == 0) {
            NSLog(@"evenly divisible");
        } else {
            NSLog(@"not evenly divisible");
        }
         
        // #2
        
        double value1, value2;
        char operator;
        bool print = true;
        Calculator *deskCalc = [[Calculator alloc] init];
        
        NSLog (@"Type in your expression.");
        scanf ("%lf %c %lf", &value1, &operator, &value2);
        
        [deskCalc setAccumulator: value1];
        
        if ( operator == '+' )
            [deskCalc add: value2]; 
        else if ( operator == '-' )
            [deskCalc subtract: value2]; 
        else if ( operator == '*' )
            [deskCalc multiply: value2]; 
        else if ( operator == '/' )
            if ( value2 == 0 ) 
            {
                NSLog(@"Cannot divide by zero");
                print = false;
            } else
                [deskCalc divide: value2];
        else 
        {
            NSLog (@"Not a valid operator");
            print = false;
        }
        
        if ( print == true )
            NSLog (@"%.2f", [deskCalc accumulator]);
        
        // #3
        
        // Create an instance of a Fraction
        Fraction *myFraction = [[Fraction alloc] init]; 
        
        // Set fraction to 1/3
        [myFraction setNumerator: 6]; 
        [myFraction setDenominator: 2];
        
        // Display the fraction using the print method
        NSLog (@"The value of myFraction is:");
        [myFraction print];
        
        // #4
        
        PrintingCalculator *myPrintingCalculator = [[PrintingCalculator alloc] init];
        [myPrintingCalculator start: 100.00: 'S'];
        
        // #5
        
        int number, right_digit;
        bool printNegative = false;
        NSLog (@"Enter your number."); 
        scanf ("%i", &number);
        
        if ( number < 0 )
        {
            number *= -1;
            printNegative = true;
        }
        
        do {
            right_digit = number % 10; 
            NSLog (@"%i", right_digit); 
            number /= 10;
        }
        while ( number != 0 );
        
        if ( printNegative )
            NSLog (@"-"); 
        
        // #6
        
        int number, origNumber, temp, divisor = 1, counter = 0;
        
        NSLog (@"Enter your number."); 
        scanf ("%i", &number);
        
        temp = number;
        origNumber = number;
        
        //NSLog(@"number: %i counter: %i", number, counter);
        while (number != 0)
        {
            number /= 10;
            counter += 1;
            
            if (number != 0) {
                divisor *= 10;
            }
            //NSLog(@"number: %i counter: %i divisor: %i", number, counter, divisor);
        }
        //NSLog(@"done setting counter and divisor...");
         
        for (int i = 0; i < counter; ++i)
        {
            //NSLog(@"temp: %i i: %i counter: %i, divisor: %i", temp, i, counter, divisor);
            //NSLog(@"%i", temp / divisor );
            
            int digit = temp / divisor;
            
            temp = origNumber % divisor;
            divisor /= 10;
            
            switch ( digit ) 
            { 
                case 0:
                    NSLog(@"zero");
                    break;
                case 1:
                    NSLog(@"one");
                    break; 
                case 2:
                    NSLog(@"two");
                    break; 
                case 3:
                    NSLog(@"three");
                    break; 
                case 4:
                    NSLog(@"four");
                    break;
                case 5:
                    NSLog(@"five");
                    break;
                case 6:
                    NSLog(@"six");
                    break;
                case 7:
                    NSLog(@"seven");
                    break;
                case 8:
                    NSLog(@"eight");
                    break;
                case 9:
                    NSLog(@"nine");
                    break;
                default:
                    NSLog (@"Unknown digit."); 
                    break;
            }
        }
         
         */
        
        // # 7
        
        int p, d, isPrime;
        
        NSLog (@"2");
        for ( p = 3; p < 50; p+=2 ) 
        {
            isPrime = 1;
            
            for ( d = 3; isPrime != 0, d < p; d+=2 )
                if ( p % d == 0 )
                    isPrime = 0;
            
            if ( isPrime != 0 ) 
                NSLog (@"%i ", p);
            
        }
        
    }
    return 0;
}

