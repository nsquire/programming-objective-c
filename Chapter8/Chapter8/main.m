//
//  main.m
//  Chapter8
//
//  Created by Nicholas Squire on 6/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Circle.h"
#import "Triangle.h"
#import "XYPoint.h"

// ClassA declaration and definition
@interface ClassA: NSObject
{
    int x;
}
-(void) initVar;
@end

@implementation ClassA
-(void) initVar
{
    x = 100;
}
@end

// Class B declaration and definition
@interface ClassB : ClassA
-(void) printVar;
@end

@implementation ClassB
-(void) printVar
{
    NSLog(@"x = %i", x);
}
@end

// Class B2 declaration and definition
@interface ClassB2 : ClassA
-(void) printVar;
@end

@implementation ClassB2

-(void) printVar
{
    NSLog(@"x=%i", x);
}

@end

// Class C declaration and definition
@interface ClassC: ClassB
-(void) initVar;
@end

@implementation ClassC
-(void) initVar
{
    x = 300;
}
@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /*
         
        ClassB *b = [[ClassB alloc] init];
        [b initVar];
        [b printVar];
        
        
         
        // #1
        
        ClassA *a = [[ClassA alloc] init];
        ClassB *b = [[ClassB alloc] init];
        ClassC *c = [[ClassC alloc] init];
        
        [a initVar];
        
        [b initVar];
        [b printVar];
        
        [c initVar];
        [c printVar];
         
         
        
        // #2
        
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];
        
        [myPoint setX: 100.05 andY: 200.12];
        [myRect setHeight: 5.3 andWidth: 8.5];
        myRect.origin = myPoint;
        
        NSLog(@"Rectangle h=%f, w=%f", myRect.height, myRect.width);
        NSLog(@"Point x=%f, y=%f", myRect.origin.x, myRect.origin.y);
        NSLog(@"Area=%f, Perimeter=%f", myRect.area, myRect.perimeter);
        
        // #3
        
        ClassB2 *b2 = [[ClassB2 alloc] init];
        [b2 initVar];
        [b2 printVar];
        
        // Superclass of ClassB is ClassA
        // Superclass of ClassB2 is ClassA, they both inherit from ClassA
        // Can have as many subclasses as you want, only one superclass?
        
          
        
        // #4
        
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];
        
        [myPoint setX: 100.05 andY: 200.12];
        [myRect setHeight: 5.3 andWidth: 8.5];
        myRect.origin = myPoint;
        
        NSLog(@"Rectangle h=%f, w=%f", myRect.height, myRect.width);
        NSLog(@"Point x=%f, y=%f", myRect.origin.x, myRect.origin.y);
        NSLog(@"Area=%f, Perimeter=%f", myRect.area, myRect.perimeter);
        
        XYPoint *newPoint = [[XYPoint alloc] init];
        [newPoint setX: 43 andY: 55];
        [myRect translate: newPoint];

        NSLog(@"Point x=%f, y=%f", myRect.origin.x, myRect.origin.y);
        
         */
        
        // #5
        
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myRectPoint = [[XYPoint alloc] init];
        
        [myRectPoint setX: 100.05 andY: 200.12];
        [myRect setHeight: 5.3 andWidth: 8.5];
        myRect.origin = myRectPoint;
        
        NSLog(@"Rectangle h=%f, w=%f", myRect.height, myRect.width);
        NSLog(@"Point x=%f, y=%f", myRect.origin.x, myRect.origin.y);
        NSLog(@"Area=%f, Perimeter=%f", myRect.area, myRect.perimeter);
        
        Circle *myCircle = [[Circle alloc] init];
        XYPoint *myCircPoint = [[XYPoint alloc] init];
        
        [myCircPoint setX: 33.05 andY: -32.12];
        [myCircle setRadius: 18];
        myCircle.origin = myCircPoint;
        
        NSLog(@"Circle r=%f", myCircle.radius);
        NSLog(@"Point x=%f, y=%f", myCircle.origin.x, myCircle.origin.y);
        NSLog(@"Area=%f, Circumfrence=%f", myCircle.area, myCircle.circumfrence);
        
        Triangle *myTriangle = [[Triangle alloc] init];
        XYPoint *myTriPoint = [[XYPoint alloc] init];
        
        [myTriPoint setX: 29.05 andY: -102.12];
        [myTriangle setSideA: 18.4 andSideB: 22.8 andSideC: 83.2 andVertHeight: 29];
        myTriangle.origin = myTriPoint;
        
        NSLog(@"Triangle side A=%f, side B=%f, side C=%f, Vertical Height=%f", myTriangle.sideA, myTriangle.sideB, myTriangle.sideC, myTriangle.vertHeight);
        NSLog(@"Point x=%f, y=%f", myTriangle.origin.x, myTriangle.origin.y);
        NSLog(@"Area=%f, Perimeter=%f", myTriangle.area, myTriangle.perimeter);

        XYPoint *newPoint = [[XYPoint alloc] init];
        [newPoint setX: 43 andY: 55];
        [myRect translate: newPoint];
        [myCircle translate: newPoint];
        [myTriangle translate: newPoint];
        
        NSLog(@"Rectangle h=%f, w=%f", myRect.height, myRect.width);
        NSLog(@"Point x=%f, y=%f", myRect.origin.x, myRect.origin.y);
        NSLog(@"Area=%f, Perimeter=%f", myRect.area, myRect.perimeter);

        NSLog(@"Circle r=%f", myCircle.radius);
        NSLog(@"Point x=%f, y=%f", myCircle.origin.x, myCircle.origin.y);
        NSLog(@"Area=%f, Circumfrence=%f", myCircle.area, myCircle.circumfrence);
        
        
        NSLog(@"Triangle side A=%f, side B=%f, side C=%f, Vertical Height=%f", myTriangle.sideA, myTriangle.sideB, myTriangle.sideC, myTriangle.vertHeight);
        NSLog(@"Point x=%f, y=%f", myTriangle.origin.x, myTriangle.origin.y);
        NSLog(@"Area=%f, Perimeter=%f", myTriangle.area, myTriangle.perimeter);

        
        
        
    }
    return 0;
}

