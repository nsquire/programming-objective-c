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

-(BOOL) removeName: (NSString *) theName
{
    AddressCard *theCard = [self lookupPartialWithIndexOf:theName];
    
    if (theCard != nil) {
        [self removeCard:theCard];
        return YES;
    }
    else
        return NO;
}

-(NSUInteger) entries
{
    return [book count];
}

-(void) list
{
    NSLog (@"\n");
    NSLog (@"======== Contents of: %@ =========", bookName);
    
    for ( AddressCard *theCard in book )
    {
        NSLog (@"%-20s    %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
        NSLog (@"%-20s", [theCard.physicalAddress UTF8String]);
    }
    
    NSLog (@"==================================================");
    NSLog (@"\n");
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
        
        if (theRange.length >= 1) {
            return nextCard;
        }
    }
    
    return nil;
}

-(AddressCard *) lookupWithIndexSet: (NSString *) theName
{
    NSUInteger result = [book indexOfObjectPassingTest:
    ^ (id obj, NSUInteger idx, BOOL *stop)
    {
        if ([[obj name] caseInsensitiveCompare: theName] == NSOrderedSame)
        {
            return YES;
        }
        else
            return NO; // keep looking
    } ];
    
    // See if we found a match
    if (result != NSNotFound) // there should only be one element
        return [book objectAtIndex: result];
    else
        return nil;
}

-(NSIndexSet *) lookupAll: (NSString *) theName
{
    NSIndexSet *result = [book indexesOfObjectsPassingTest:
        ^(id obj, NSUInteger idx, BOOL *stop)
        {
            if ([[obj name] caseInsensitiveCompare: theName] == NSOrderedSame)
                return YES; // found a match, keep going
            else
                return NO; // keep looking
        } ];
    
    // Return the result
    return result;
}

// lookup address card by name - assumes a partial match
-(AddressCard *) lookupPartialWithIndexOf: (NSString *) theName
{
    NSUInteger result = [book indexOfObjectPassingTest:
        ^ (id obj, NSUInteger idx, BOOL *stop)
        {
            NSRange theRange = [[obj name] rangeOfString: theName options: NSCaseInsensitiveSearch];
            
            if (theRange.length >= 1) {
                return YES;
            }
            else
                return NO; // keep looking
        } ];
    
    // See if we found a match
    if (result != NSNotFound) // there should only be one element
        return [book objectAtIndex: result];
    else
        return nil;
}

-(NSArray *) lookupPartialReturningArray: (NSString *) theName
{
    // (Hint: After the indexesOfObjectsPassingTest: method is done, enumerate each index for the index set and add the corresponding element to an array that you’ll return. Better yet, look at the NSArray method objectsAtIndexes:.)
    
    NSIndexSet *results = [book indexesOfObjectsPassingTest:
        ^ (id obj, NSUInteger idx, BOOL *stop)
        {
            NSRange theNameRange = [[obj name] rangeOfString: theName options: NSCaseInsensitiveSearch];
            
            if (theNameRange.length >= 1) {
                return YES;
            }
            
            NSRange theEmailRange = [[obj email] rangeOfString: theName options: NSCaseInsensitiveSearch];

            if (theEmailRange.length >= 1) {
                return YES;
            }
            
            NSRange theAddressRange = [[obj physicalAddress] rangeOfString: theName options: NSCaseInsensitiveSearch];
            
            if (theAddressRange.length >= 1) {
                return YES;
            }
            
            return NO; // keep looking
        } ];
    
    NSLog(@"Number of items in results set: %li", [results count]);
    
    //NSUInteger index = [results firstIndex];
    
    NSArray *foundAddressCards = [NSArray array];
    /* while(index != NSNotFound)
    {
        //NSLog(@" %@",[book objectAtIndex: index]);
        [foundAddressCards addObject: [book objectAtIndex: index]];
        index = [results indexGreaterThanIndex: index];
    } */
    
    //Better yet, look at the NSArray method objectsAtIndexes:
    foundAddressCards = [book objectsAtIndexes: results];
    
    if (foundAddressCards == nil)
        return nil;
    
    return foundAddressCards;
}

@end
