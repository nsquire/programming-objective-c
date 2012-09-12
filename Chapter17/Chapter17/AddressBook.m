//
//  AddressBook.m
//  Chapter17
//
//  Created by Squire, Nicholas on 9/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook

@synthesize bookName, book;

// Setup the AddressBook's name and an empty book

-(id) initWithName: (NSString *) name
{
    self = [super init];
    
    if (self) {
        bookName = [NSString stringWithString: name];
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

-(NSUInteger) entries
{
    return [book count];
    
}

-(void) list
{
    NSLog(@"======== Contents of: %@ =========", bookName);
    
    for ( AddressCard *theCard in book )
        NSLog(@"%-20s    %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
    
    NSLog(@"==================================================");
    
}

// lookup address card by name — assumes an exact match

-(AddressCard *) lookup: (NSString *) theName
{
    for ( AddressCard *nextCard in book )
        if ( [nextCard.name caseInsensitiveCompare: theName] == NSOrderedSame )
            return nextCard; return nil;
}

// Method for NSCopying protocol

- (id) copyWithZone: (NSZone *) zone
{
    id newAddressBook = [[[self class] allocWithZone: zone] init];
    
    [newAddressBook setBookName: bookName];
    
    // The following will do a shallow copy of the address book

    [newAddressBook setBook: book];
    
    return newAddressBook;
}

@end
