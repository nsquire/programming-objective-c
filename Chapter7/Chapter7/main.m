//
//  main.m
//  Chapter7
//
//  Created by Nicholas Squire on 6/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Fraction.h"
#import "Complex.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /*
        
        // #1-3
        
        Fraction *myFraction = [[Fraction alloc] init];
        
        // set fraction to 1/3
        //myFraction.numerator = 1;
        //myFraction.denominator = 3;
        [myFraction setTo: 1 over: 3];
        
        // display the fraction
        
        NSLog(@"The value of myFraction is:");
        [myFraction print: true];
        
        Fraction *aFraction = [[Fraction alloc] init]; 
        Fraction *bFraction = [[Fraction alloc] init];
        
        // set two fractions to 1/4 and 1/2 and add them together
        
        [aFraction setTo: 4 over: 8];
        [bFraction setTo: 1 over: 4];
        //[aFraction setTo: -4 over: 8];
        //[bFraction setTo: -1 over: 4];
        
        // print the results
        
        [aFraction print: YES];
        NSLog(@"+");
        [bFraction print: YES];
        NSLog(@"=");
        
        Fraction *resultFraction = [aFraction add: bFraction];
        //Fraction *resultFraction = [aFraction multiply: bFraction];
        //Fraction *resultFraction = [aFraction subtract: bFraction];
        //Fraction *resultFraction = [aFraction divide: bFraction];
        //[aFraction reduce];
        
        [resultFraction print: NO];
        
        // #4
        
        Fraction *mixedFraction = [[Fraction alloc] init];
        [mixedFraction setTo: 7 over: 3];
        [mixedFraction print: YES];
        
         */
        
        // #5
        
        Complex *aComplex = [[Complex alloc] init];
        Complex *bComplex = [[Complex alloc] init];
        
        Complex *addResult;
        
        aComplex.real = 3;
        aComplex.imaginary = 8;
        
        bComplex.real = 2;
        bComplex.imaginary = 3;
        
        addResult = [aComplex add: bComplex];
        [addResult print];
    
    
    }
    
    return 0;
}

