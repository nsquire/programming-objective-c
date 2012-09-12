//
//  XYPoint.h
//  Chapter17
//
//  Created by Squire, Nicholas on 9/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject <NSCopying>

@property int x, y;

-(void) setX: (int) xVal andY: (int) yVal;

@end
