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

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // #1
        NSDate *today = [NSDate date];
        NSDate *past = [NSDate distantPast];
        NSLog(@"Elapsed days: %lu", [today elapsedDays:past]);
        
        // #2
        //[myBook lookup: @"steve"]
        
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        
        NSString *cName = @"Stephen Kochan";
        NSString *cEmail = @"steve@classroomM.com";
        
        NSString *dName = @"Jamie Baker";
        NSString *dEmail = @"jbaker@classroomM.com";
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        
        // Set up a new address book
        AddressBook *myBook = [[AddressBook alloc] initWithName: @"Linda’s Address Book"];
        
        NSLog (@"Entries in address book after creation: %li", [myBook entries]);
        
        // Now set up four address cards
        [card1 setName: aName andEmail: aEmail]; [card2 setName: bName andEmail: bEmail];
        [card3 setName: cName andEmail: cEmail]; [card4 setName: dName andEmail: dEmail];
        
        // Add the cards to the address book
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        [myBook addCard: card4];
        
        NSLog (@"Entries in address book after adding cards: %li", [myBook entries]);
        
        // List all the entries in the book now
        [myBook list];
        
        // Look up a person by name
        NSLog (@"Stephen Kochan");
        AddressCard *myCard;
        myCard = [myBook lookupWithPartial: @"step"];
        
        if (myCard != nil)
            [myCard print];
        else
            NSLog (@"Not found!");
        
        // Try another lookup
        /*
         NSLog (@"Haibo Zhang");
        myCard = [myBook lookup: @"Haibo Zhang"];
        
        if (myCard != nil)
            [myCard print];
        else
            NSLog (@"Not found!");
        */
        
        // Now remove the entry from the phone book
        [myBook removeCard: myCard];
        [myBook list]; // verify it’s gone
        
        // List the unsorted book
        [myBook list];
        // Sort it and list it again
        [myBook sort];
        [myBook list];
        
    }
    return 0;
}

