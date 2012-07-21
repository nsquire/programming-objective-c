//
//  main.m
//  Chapter10
//
//  Created by Nicholas Squire on 7/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Fraction.h"
#import "Rectangle.h"
#import "Square.h"
#import "XYPoint.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];
        
        [myPoint setX: 100 andY: 200];
        
        [myRect setWidth: 5 andHeight: 8]; 
        myRect.origin = myPoint;
        
        NSLog (@"Rectangle w = %i, h = %i", myRect.width, myRect.height);
        NSLog (@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
        NSLog (@"Area = %i, Perimeter = %i", [myRect area], [myRect perimeter]);
        
        Rectangle *myRect2 = [[Rectangle alloc] initWithWidth:15 andHeight:7];
        myRect2.origin = myPoint;
        NSLog (@"Rectangle2 w = %i, h = %i", myRect2.width, myRect2.height);
        NSLog (@"Origin at (%i, %i)", myRect2.origin.x, myRect2.origin.y);
        NSLog (@"Area = %i, Perimeter = %i", [myRect2 area], [myRect2 perimeter]);

    
        Square *mySquare = [[Square alloc] initWithSide: 5];
        mySquare.origin = myPoint;
        NSLog (@"Square w = %i, h = %i", mySquare.width, mySquare.height);
        NSLog (@"Origin at (%i, %i)", mySquare.origin.x, mySquare.origin.y);
        NSLog (@"Area = %i, Perimeter = %i", [mySquare area], [mySquare perimeter]);
        NSLog (@"Square s = %i", [mySquare side]);
        
        Fraction *myFraction = [[Fraction alloc] init];
        [myFraction setNumerator: 3];
        [myFraction setDenominator: 8];
        
        Fraction *myFraction2 = [[Fraction alloc] init];
        [myFraction2 setNumerator: 1];
        [myFraction2 setDenominator: 3];
        
        NSLog(@"Counter: %i", [Fraction count]);
        [myFraction add: myFraction2];
        NSLog(@"Counter: %i", [Fraction count]);
        
        [myFraction print];
        
        typedef enum { monday = 1, tuesday, wednesday, thursday, friday, saturday, sunday } Day;
        Day day1 = monday, day2 = tuesday;
        
        typedef Fraction *FractionObj;
        FractionObj f1 = [[Fraction alloc] init],
                    f2 = [[Fraction alloc] init];
        
        float     f = 1.00;
        short int i = 100;
        long int  l = 500L;
        double    d = 15.00;
        
        /*
         
        f+i = float
        l/d = double
        i/l+f = float
        l*i = int
        f/2 = float
        i / (d + f) double
        l / (i * 2.0) float
        l + i / (double) l double
        
        */
    }
    return 0;
}

