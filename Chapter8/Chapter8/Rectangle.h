//
//  Rectangle.h
//  Chapter8
//
//  Created by Nicholas Squire on 6/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GraphicObject.h"

@class XYPoint;

@interface Rectangle : GraphicObject

@property float height, width;

-(void) setHeight: (float)h andWidth: (float)w;
-(float) area;
-(float) perimeter;
-(BOOL) containsPoint: (XYPoint *) aPoint;
-(Rectangle *) intersect: (Rectangle *) rect;
-(void) draw;

@end
