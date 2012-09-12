//
//  AddressCard.m
//  Chapter17
//
//  Created by Squire, Nicholas on 9/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard

@synthesize email, name;

-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail
{
    self.email = theEmail;
    self.name = theName;
}

-(void) print
{
    NSLog (@"====================================");
    NSLog (@"|	                                |");
    NSLog (@"|  %-31s |", [name UTF8String]);
    NSLog (@"|  %-31s |", [email UTF8String]);
    NSLog (@"|                                  |");
    NSLog (@"|                                  |");
    NSLog (@"|                                  |");
    NSLog (@"|          O           O           |");
    NSLog (@"====================================");
}

@end
