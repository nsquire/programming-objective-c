//
//  GraphicObject.h
//  Chapter9
//
//  Created by Nicholas Squire on 7/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class XYPoint;

@interface GraphicObject : NSObject
{
    int fillColor;  // 32-bit color
    BOOL filled;    // Is the object filled?
    int lineColor;  // 32-bit line color
}

-(int) fillColor;
-(void) setFillColor: (int) val;
-(BOOL) filled;
-(void) setFilled: (BOOL) val;
-(int) lineColor;
-(void) setLineColor: (int) val;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;

-(void) translate: (XYPoint *) pt;


@end
