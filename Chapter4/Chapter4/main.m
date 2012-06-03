//
//  main.m
//  Chapter4
//
//  Created by Nicholas Squire on 5/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

// accumulator methods
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;

// arithmetic methdos
-(double) add: (double) value;
-(double) subtract: (double) value;
-(double) multiply: (double) value;
-(double) divide: (double) value;
-(double) changeSign;
-(double) reciprocal;
-(double) xSquared;
+(double) exponentiation: (double) value: (int) power;

// memory methods
-(double) memoryClear;
-(double) memoryStore;
-(double) memoryRecall;
-(double) memoryAdd: (double) value;
-(double) memorySubtract: (double) value;

@end

@implementation Calculator
{
    double accumulator;
    double memory;
}

-(void) setAccumulator:(double)value
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

-(double) add:(double)value
{
    accumulator += value;
    return accumulator;
}

-(double) subtract:(double)value
{
    accumulator -= value;
    return accumulator;
}

-(double) multiply:(double)value
{
    accumulator *= value;
    return accumulator;
}

-(double) divide:(double)value
{
    accumulator /= value;
    return accumulator;
}

-(double) changeSign
{
    accumulator *= -1;
    return accumulator;
}

-(double)reciprocal
{
    accumulator = 1 / accumulator;
    return  accumulator;
}

-(double)xSquared
{
    accumulator *= accumulator;
    return accumulator;
}

+(double) exponentiation:(double)value :(int)power
{
    double currentValue = value;
    
    for (int i = 1; i < power; i++)
        currentValue = currentValue * value;
    
    return currentValue;
}

// memory methods

-(double) memoryClear
{
    memory = 0.0;
    return  accumulator;
}

-(double) memoryStore
{
    memory = accumulator;
    return accumulator;
}

-(double) memoryRecall
{
    accumulator = memory;
    return accumulator;
}

-(double) memoryAdd:(double)value
{
    memory += value;
    accumulator = memory;
    return accumulator;
}

-(double) memorySubtract:(double)value
{
    memory -= value;
    accumulator = memory;
    return accumulator;
}

@end

@interface Complex : NSObject

-(void) setReal: (double) a;
-(void) setImaginary: (double) b;
-(void) print;  // display as a + bi
-(double) real;
-(double) imaginary;

@end

@implementation Complex
{
    double real;
    double imaginary;
}
    
-(void) setReal:(double)a
{
    real = a;
}

-(void) setImaginary:(double)b
{
    imaginary = b;
}

-(void) print
{
    NSLog(@"%g + %gi", real, imaginary);
}

-(double) real
{
    return real;
}

-(double)imaginary
{
    return imaginary;
}

@end

@interface Rectangle : NSObject

-(void) setWidth: (int) w;
-(void) setHeight: (int) h;
-(int) width;
-(int) height;
-(int) area;
-(int) perimeter;

@end

@implementation Rectangle
{
    int width;
    int height;
}

-(void) setWidth:(int)w
{
    width = w;
}

-(void) setHeight:(int)h
{
    height = h;
}

-(int) width
{
    return width;
}

-(int) height
{
    return height;
}

-(int) area
{
    return width * height;
}

-(int) perimeter
{
    return 2 * (width + height);
}

@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        //NSLog(@"Hello, World!");
        
        //int x = +123;
        
        
        Calculator *deskCalc = [[Calculator alloc] init];
        
        [deskCalc setAccumulator: 100.0];
        NSLog(@"Accumulator: %g", [deskCalc add: 200.]);
        NSLog(@"Accumulator: %g", [deskCalc divide: 15.0]);
        NSLog(@"Accumulator: %g", [deskCalc subtract: 10.0]);
        NSLog(@"Accumulator: %g", [deskCalc multiply: 5]);
        NSLog(@"Accumulator: %g", [deskCalc changeSign]);
        NSLog(@"Accumulator: %g", [deskCalc reciprocal]);
        NSLog(@"Accumulator: %g", [deskCalc xSquared]);
        NSLog(@"Accumulator: %g, Memory: %g", [deskCalc accumulator], [deskCalc memoryStore]);
        NSLog(@"Accumulator: %g, Memory: %g", [deskCalc accumulator], [deskCalc memoryAdd:20]);
        NSLog(@"Accumulator: %g, Memory: %g", [deskCalc accumulator], [deskCalc memorySubtract:10]);
        NSLog(@"Accumulator: %g, Memory: %g", [deskCalc accumulator], [deskCalc memoryRecall]);
        NSLog(@"Accumulator: %g, Memory: %g", [deskCalc accumulator], [deskCalc memoryClear]);
        NSLog(@"Accumulator: %g, Memory: %g", [deskCalc accumulator], [deskCalc memoryRecall]);
                
        NSLog(@"The calc result is %g", [deskCalc accumulator]);
        
        float fTemp = 27.0f;
        float cTemp = 0.0f;
        
        cTemp = (fTemp - 32) / 1.8;
        
        NSLog(@"27 degrees Fahrenheit (F) is the same as %f degrees Celcius (C).", cTemp);
        
        char c, d;
        c = 'd';
        d = c;
        NSLog(@"d = %c", d);
        
        
        double exp = (3 * ([Calculator exponentiation:2.55 :3])) - (5 * ([Calculator exponentiation:2.55 :2])) + 6;
        NSLog(@"3x^3 - 5x^2 + 6 for x=2.55 is %e", exp);
        
        // (3.31 x 10^-8 + 2.01 x 10^-7) / (7.16 x 10^-6 + 2.01 x 10^-8)
        // ((3.31 x (1 / 10^8)) + (2.01 x (1 / 10^7))) / ((7.16 x (1 / 10^6)) + (2.01 x (1 / 10^8)))
        
        double expTop = (3.31 * (1 / [Calculator exponentiation:10.0 :8])) + (2.01 * (1 / [Calculator exponentiation:10.0 :7]));
        double expBottom = (7.16 * (1 / [Calculator exponentiation:10.0 :6])) + (2.01 * (1 / [Calculator exponentiation:10.0 :8]));
        double exp2 = expTop / expBottom;
        
        NSLog(@"(3.31 x 10^-8 + 2.01 x 10^-7) / (7.16 x 10^-6 + 2.01 x 10^-8) is %e", exp2);
        
        Complex *myComplex = [[Complex alloc] init];
        [myComplex setReal:4.1];
        [myComplex setImaginary:7.3];
        [myComplex print];
        
        Rectangle *myRectangle = [[Rectangle alloc] init];
        [myRectangle setWidth:5];
        [myRectangle setHeight:9];
        int area = [myRectangle area];
        int perimeter = [myRectangle perimeter];
        NSLog(@"Rectangle info: area is %i, perimeter is %i", area, perimeter);
        
    }
    return 0;
}

