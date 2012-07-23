//
//  main.m
//  Chapter11
//
//  Created by Nicholas Squire on 7/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Calculator+Trig.h"
#import "Fraction+Comparison.h"
#import "Fraction+MathOps.h"
#import "Square.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Fraction *a = [[Fraction alloc] init];
        Fraction *b = [[Fraction alloc] init];
        Fraction *result;
        
        [a setTo: 1 over: 3]; 
        [b setTo: 2 over: 5];
        [a print]; NSLog (@" +");
        [b print]; NSLog (@"-----");
        result = [a add: b];
        [result print];
        
        NSLog (@"\n");
        [a print];
        NSLog (@" -");
        [b print];
        NSLog (@"-----");
        result = [a sub: b];
        [result print];
        NSLog (@"\n");
        [a print];
        NSLog (@" *");
        [b print];
        NSLog (@"-----");
        result = [a mul: b];
        [result print];
        NSLog (@"\n");
        [a print];
        NSLog (@" /");
        [b print];
        NSLog (@"-----");
        result = [a div: b];
        [result print];
        NSLog (@"\n");
        
        
        Fraction *c = [[Fraction alloc] init];
        Fraction *d = [[Fraction alloc] init];
        
        [c setTo: 1 over: 3]; 
        [d setTo: 2 over: 5];
        
        [c print];
        [d print];
        
        NSLog(@"equal: %i", [c isEqualToFraction: d]);
        NSLog(@"compare: %i", [c compare: d]);
        
        Fraction *e = [[Fraction alloc] init];
        Fraction *f = [[Fraction alloc] init];
        
        [e setTo: 3 over: 8];
        [f setTo: 2 over: 9];
        
        [e print];
        [f print];
        
        NSLog(@"equal: %i", [e isEqualTo: f]);
        NSLog(@"compare: %i", [e compare: f]);
        NSLog(@"isLessThanOrEqualTo: %i", [e isLessThanOrEqualTo: f]);
        NSLog(@"isLessThan: %i", [e isLessThan: f]);
        NSLog(@"isGreaterThanOrEqualTo: %i", [e isGreaterThanOrEqualTo: f]);
        NSLog(@"isGreaterThan: %i", [e isGreaterThan: f]);
        NSLog(@"isNotEqualTo: %i", [e isNotEqualTo: f]);
        
        double value1, value2;
        char operator;
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
            [deskCalc divide: value2];
        
        NSLog (@"%.2f", [deskCalc accumulator]);
        
        NSLog (@"sin %.2f", [deskCalc sin]);
        NSLog (@"cos %.2f", [deskCalc cos]);
        NSLog (@"tan %.2f", [deskCalc tan]);
        
        Square *mySquare = [[Square alloc] initWithSide:7];
        
        NSLog (@"area %i", [mySquare area]);
        NSLog (@"perimeter %i", [mySquare perimeter]);
        
    }
    return 0;
}

