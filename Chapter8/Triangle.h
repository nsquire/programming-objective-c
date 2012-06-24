//
//  Triangle.h
//  Chapter8
//
//  Created by Nicholas Squire on 6/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GraphicObject.h"

@class XYPoint;

@interface Triangle : GraphicObject

@property float vertHeight, sideA, sideB, sideC;

-(void) setSideA: (float) a andSideB: (float) b andSideC: (float) c andVertHeight: (float) h;

-(float) area;
-(float) perimeter;

@end
