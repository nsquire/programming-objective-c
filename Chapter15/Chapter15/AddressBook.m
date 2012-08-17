//
//  AddressBook.m
//  Chapter15
//
//  Created by Nicholas Squire on 8/15/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook

@synthesize bookName, book;

// set up the AddressBook's name in an empty book

-(id) initWithName: (NSString *) name
{
    self = [super init];
    
    if (self) {
        bookName = [NSString stringWithString:name];
        book = [NSMutableArray array];
    }
    
    return self;
}

-(id) init
{
    return [self initWithName: @"NoName"];
}

-(void) addCard: (AddressCard *) theCard
{
    [book addObject: theCard];
}

-(void) removeCard: (AddressCard *) theCard
{
    [book removeObjectIdenticalTo: theCard];
}

-(NSUInteger) entries
{
    return [book count];
}

-(void) list
{
    NSLog (@"======== Contents of: %@ =========", bookName);
    
    for ( AddressCard *theCard in book )
    {
        NSLog (@"%-20s    %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
    }
    
    NSLog (@"==================================================");
}

-(void) sort
{
    //[book sortUsingSelector: @selector(compareNames:)];
    
    // using block
    //[book sortUsingComparator: ^(id obj1, id obj2) {
    //    return [obj1 compareNames: obj2];
    //} ];
    
    [book sortUsingComparator:
        ^(id obj1, id obj2) {
            return [[obj1 name] compare: [obj2 name]];
        } ];
}

// lookup address card by name - assumes an exact match
-(AddressCard *) lookup: (NSString *) theName
{
    for ( AddressCard *nextCard in book )
        if ([nextCard.name caseInsensitiveCompare:theName] == NSOrderedSame )
        {
            return nextCard;
        }
    
    return nil;
}

// lookup address card by name - assumes a partial match
-(AddressCard *) lookupWithPartial: (NSString *) theName
{
    for ( AddressCard *nextCard in book )
    {
        NSRange theRange = [nextCard.name rangeOfString: theName];
        
        if (theRange.location != 0) {
            return nextCard;
        }
        
        //if ([nextCard.name rangeOfString: theName] )
        //{
        //    return nextCard;
        //}
    }
    
    return nil;
}

@end
