//
//  Triangle.h
//  Chapter8
//
//  Created by Nicholas Squire on 6/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GraphicObject.h"

@interface Triangle : GraphicObject

@property float vertHeight, sideA, sideB, sideC;

-(void) setSideA: (float) a andSideB: (float) b andSideC: (float) c andVertHeight: (float) h;

-(float) area;
-(float) perimeter;

@end
