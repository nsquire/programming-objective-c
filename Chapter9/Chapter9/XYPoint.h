//
//  XYPoint.h
//  Chapter9
//
//  Created by Nicholas Squire on 7/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject

@property float x, y;

-(void) setX: (float)xVal andY: (float)yVal;
-(void) print;

@end
