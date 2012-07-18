//
//  main.m
//  Chapter9
//
//  Created by Nicholas Squire on 7/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Fraction.h" 
#import "Complex.h"
#import "Rectangle.h"
#import "XYPoint.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /*
         
        // #1
        
        Fraction *f1 = [[Fraction alloc] init]; 
        Fraction *f2 = [[Fraction alloc] init]; 
        Fraction *fracResult;
        
        Complex *c1 = [[Complex alloc] init]; 
        Complex *c2 = [[Complex alloc] init]; 
        Complex *compResult;
        
        [f1 setTo: 1 over: 10]; 
        [f2 setTo: 2 over: 15];
        [c1 setReal: 18.0 andImaginary: 2.5]; 
        [c2 setReal: -5.0 andImaginary: 3.2];
        
        // add and print 2 complex numbers
        
        [c1 print]; NSLog (@"        +"); [c2 print];
        NSLog (@"---------"); 
        compResult = [c1 add: c2]; 
        
        //[compResult reduce]; not inherited or a method on Complex
        
        [compResult print];
        NSLog (@"\n");
        
        // add and print 2 fractions
        [f1 print]; NSLog (@"    +"); [f2 print]; 
        NSLog (@"----");
        fracResult = [f1 add: f2];
        [fracResult print];
        
        // #2
        
        id dataValue;
        Fraction *f11 = [[Fraction alloc] init]; 
        Complex *c11 = [[Complex alloc] init];
        dataValue = [[Rectangle alloc] init];
        
        [f11 setTo: 2 over: 5];
        [c11 setReal: 10.0 andImaginary: 2.5];
        
        // first dataValue gets a fraction
        dataValue = f11; 
        [dataValue print];
        
        // now dataValue gets a complex number
        dataValue = c11;
        [dataValue print];
        
       
        
        // #3
        
        id dataValue;
        XYPoint *p1 = [[XYPoint alloc] init]; 

        [p1 setX: 10 andY: 20];
        
        // first dataValue gets a fraction
        dataValue = p1; 
        [dataValue print];
         
          
        
        // #4
        
        // Despite what the book says about having to rename add:, seems to work fine
        
        id dataValue1, dataValue2, result;
        Fraction *f1 = [[Fraction alloc] init]; 
        Fraction *f2 = [[Fraction alloc] init]; 
        Complex *c1 = [[Complex alloc] init];
        Complex *c2 = [[Complex alloc] init];
        
        [f1 setTo: 2 over: 5];
        [f2 setTo: 4 over: 5];
        [c1 setReal: 10.0 andImaginary: 2.5];
        [c2 setReal: 7.0 andImaginary: 9.5];
        
        dataValue1 = f1;
        dataValue2 = f2;
        
        result = [dataValue1 add: dataValue2];
        [result print];
        
        dataValue1 = c1;
        dataValue2 = c2;
        
        result = [dataValue1 add: dataValue2];
        [result print];
        
        */
        
        // #5
        
        Fraction *fraction = [[Fraction alloc] init];
        Complex *complex = [[Complex alloc] init];
        id number = [[Complex alloc] init];
        
        NSLog(@"%i", [fraction isMemberOfClass: [Complex class]]); // 0
        NSLog(@"%i", [complex isMemberOfClass: [NSObject class]]); // 0
        NSLog(@"%i", [complex isKindOfClass: [NSObject class]]); // 1
        NSLog(@"%i", [fraction isKindOfClass: [Fraction class]]); // 1
        NSLog(@"%i", [fraction respondsToSelector: @selector (print)]); // 1
        NSLog(@"%i", [complex respondsToSelector: @selector (print)]); // 1
        NSLog(@"%i", [Fraction instancesRespondToSelector: @selector (print)]); // 1
        NSLog(@"%i", [number respondsToSelector: @selector (print)]); // 1
        NSLog(@"%i", [number isKindOfClass: [Complex class]]); // 1
        NSLog(@"%i", [[number class] respondsToSelector: @selector (alloc)]); // 1
        
    }
    return 0;
}

