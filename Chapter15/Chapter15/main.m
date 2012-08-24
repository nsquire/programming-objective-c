//
//  main.m
//  Chapter15
//
//  Created by Nicholas Squire on 8/5/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NSDate+ElapsedDays.h"
#import "AddressCard.h"
#import "AddressBook.h"
#import "Fraction.h"
#import "Fraction+MathOps.h"
#import "Fraction+Comparison.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *today = [NSDate date];
        NSDate *past = [NSDate distantPast];
        NSLog(@"Elapsed days: %lu", [today elapsedDays: past]);
        
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *aAddress = @"123 Main St.";
        
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        NSString *bAddress = @"123 Main St.";
        
        NSString *cName = @"Stephen Kochan";
        NSString *cEmail = @"steve@classroomM.com";
        NSString *cAddress = @"123 Main St.";
        
        NSString *dName = @"Jamie Baker";
        NSString *dEmail = @"jbaker@classroomM.com";
        NSString *dAddress = @"123 Main St.";
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        
        // Set up a new address book
        AddressBook *myBook = [[AddressBook alloc] initWithName: @"Linda’s Address Book"];
        
        NSLog (@"Entries in address book after creation: %li", [myBook entries]);
        
        // Now set up four address cards
        [card1 setName: aName andEmail: aEmail andAddress: aAddress];
        [card2 setName: bName andEmail: bEmail andAddress: bAddress];
        [card3 setName: cName andEmail: cEmail andAddress: cAddress];
        [card4 setName: dName andEmail: dEmail andAddress: dAddress];
        
        // Add the cards to the address book
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        [myBook addCard: card4];
        
        NSLog (@"Entries in address book after adding cards: %li", [myBook entries]);
        
        // List all the entries in the book now
        [myBook list];
        
        // Look up a person by name
        NSLog (@"Search for step");
        AddressCard *myCard;
        myCard = [myBook lookupPartialWithIndexOf: @"step"];
        
        if (myCard != nil)
            [myCard print];
        else
            NSLog (@"Not found!");
        
        // Try another lookup
        NSLog (@"Search for Haibo Zhang");
        myCard = [myBook lookupPartialWithIndexOf: @"Haibo Zhang"];
        
        if (myCard != nil)
            [myCard print];
        else
            NSLog (@"Not found!");
        
        // Try another lookup
        NSLog (@"Search for m");
        
        NSArray *myCards = [myBook lookupPartialReturningArray: @"m"];
        
        if (myCards != nil)
        {
            for (AddressCard *theCard in myCards) {
                [theCard print];
            }
        }
        else
            NSLog (@"Not found!");
        
        // Try another lookup
        NSLog (@"Search for Julia");
        myCard = [myBook lookupPartialWithIndexOf: @"Julia"];
        
        if (myCard != nil)
            [myCard print];
        else
            NSLog (@"Not found!");
        
        // Now remove the entry from the phone book
        //[myBook removeCard: myCard];
        NSLog(@"Removed Jamie: %i", [myBook removeName: @"Jamie"]);
        NSLog(@"Removed abcdefg: %i", [myBook removeName: @"abcdefg"]);
        [myBook list]; // verify it’s gone
        
        // List the unsorted book
        [myBook list];
        
        // Sort it and list it again
        [myBook sort];
        [myBook list];
        
        
        Fraction *aFraction = [[Fraction alloc] init];
        [aFraction setTo: 100 over: 200];
        //[aFraction print];
        
        Fraction *bFraction = [[Fraction alloc] init];
        [bFraction setTo: 25 over: 75];
        //[bFraction print];
        
        Fraction *cFraction = [[Fraction alloc] init];
        [cFraction setTo: 44 over: 100];
        //[cFraction print];
        
        NSArray *myFractions = [NSArray arrayWithObjects: aFraction, bFraction, cFraction, nil];
        
        for (int i = 0; i < [myFractions count]; ++i) {
            [[myFractions objectAtIndex:i] print];
        }
        
        for (Fraction *myFraction in myFractions)
        {
            [myFraction print];
        }
        
        for (Fraction *myFraction in myFractions)
        {
            NSLog(@"%@", myFraction);
        }
        
        Fraction *sum = [[Fraction alloc] init];
        sum = [aFraction add: bFraction];
        NSLog (@"The sum of %@ and %@ is %@", aFraction, bFraction, sum);
        
        NSLog(@"Fractions before sorting");
        NSMutableArray *myFractionsToSort = [NSMutableArray arrayWithObjects: aFraction, bFraction, cFraction, nil];
        
        for (Fraction *myFraction in myFractionsToSort)
        {
            NSLog(@"%@", myFraction);
        }
        
        [myFractionsToSort sortUsingSelector: @selector(compareFractions:)];

        NSLog(@"Fractions after sorting");
        
        for (Fraction *myFraction in myFractionsToSort)
        {
            NSLog(@"%@", myFraction);
        }
        
    }
    return 0;
}

