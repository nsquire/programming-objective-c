//
//  AddressCard.h
//  Chapter17
//
//  Created by Squire, Nicholas on 9/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

@property (nonatomic, copy) NSString *email, *name;

-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail;
-(void) print;

@end

