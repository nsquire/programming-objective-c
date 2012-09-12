//
//  Rectangle.h
//  Chapter17
//
//  Created by Squire, Nicholas on 9/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class XYPoint;
@interface Rectangle: NSObject <NSCopying>

@property int width, height;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(void) setWidth: (int) w andHeight: (int) h;
-(int) area;
-(int) perimeter;

@end
