//
//  main.m
//  Chapter19
//
//  Created by Nicholas Squire on 9/15/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressBook.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int p, d;
        BOOL isPrime;
        NSMutableArray *primesArray = [NSMutableArray array];
        
        for ( p = 2; p <= 50; ++p ) {
            isPrime = YES;
            
            for ( d = 2; d < p; ++d ) {
                if ( p % d == 0 ) {
                    isPrime = NO;
                }
            }
            
            if ( isPrime == YES ) {
                NSLog (@"%i ", p);
                id primeNumber = [NSNumber numberWithInt: p];
                // Add prime number to array
                [primesArray addObject: primeNumber];
            }
        }
        
        // Output the array
        
        NSLog(@"array: %@", primesArray);
        
        // Write array to disk
        
        if ([primesArray writeToFile: @"/Users/nsquire/Desktop/primes.pl" atomically:YES] == NO) {
            NSLog(@"Error writing file");
            return 1;
        }
        
        NSMutableArray *primesArrayFromDisk;
        
        primesArrayFromDisk = [NSMutableArray arrayWithContentsOfFile:@"/Users/nsquire/Desktop/primes.pl"];
        
        for (NSNumber *myInt in primesArrayFromDisk) {
            NSLog(@"%@", myInt);
        }
        
        // #3
        
        NSDictionary *glossary;
        glossary = [NSDictionary dictionaryWithContentsOfFile: @"/Library/Preferences/.GlobalPreferences.plist"];
        
        for ( NSString *key in glossary ) {
            //NSLog (@"%@:, key", [glossary objectForKey: key]);
        }
        
        // #4
        
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        NSString *cName = @"Stephen Kochan";
        NSString *cEmail = @"steve@steve_kochan.com";
        NSString *dName = @"Jamie Baker";
        NSString *dEmail = @"jbaker@hitmail.com";
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        
        AddressBook *myBook = [[AddressBook alloc] initWithName:@"Test book"];
        
        // First set up four address cards
        [card1 setName: aName andEmail: aEmail];
        [card2 setName: bName andEmail: bEmail];
        [card3 setName: cName andEmail: cEmail];
        [card4 setName: dName andEmail: dEmail];
        
        // Add some cards to the address book
        
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        [myBook addCard: card4];
        
        [myBook sort];
        [myBook list];
        
        // archiveRootObject method - works for single object at a time
        /*
        if ([NSKeyedArchiver archiveRootObject: myBook toFile: @"/Users/nsquire/Desktop/addrbook.arch"] == NO)
            NSLog (@"archiving failed");
        */
        
        // NSMutableData method - supports multiple objects at a time
        
        NSMutableData *dataArea;
        NSKeyedArchiver *archiver;
        
        // Set up a data area and connect it to an NSKeyedArchiver object
        dataArea = [NSMutableData data];
        archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData: dataArea];
        
        // Now we can begin archiving our objects
        [archiver encodeObject: myBook forKey:@"myaddrbook"];
        [archiver finishEncoding];
        
        // Write the archived data area to a file
        if ([dataArea writeToFile: @"/Users/nsquire/Desktop/addrbook.arch" atomically:YES] == NO) {
            NSLog(@"Archiving failed!");
            return 2;
        }
        
        // Read in the archive and connect an
        // NSKeyedUnarchiver object to it
        
        NSKeyedUnarchiver *unarchiver;
        AddressBook *myBook2;
        NSData *dataArea2;
        
        dataArea2 = [NSData dataWithContentsOfFile: @"/Users/nsquire/Desktop/addrbook.arch"];
        
        if (! dataArea2) {
            NSLog (@"Can’t read back archive file!");
            return 3;
        }
        
        unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData: dataArea2];
        
        // Decode the objects we previously stored in the archive
        
        myBook2 = [unarchiver decodeObjectForKey: @"myaddrbook"];
        [unarchiver finishDecoding];
        
        // Verify the data
        [myBook2 list];
        
        // Search for user from command line
        NSString *nameSearch = [NSString stringWithCString: argv[1] encoding: NSUTF8StringEncoding];
        
        NSLog(@"Searching with: %@", nameSearch);
        
        AddressCard *searchCard = [myBook2 lookup: nameSearch];
        
        if (searchCard == nil) {
            NSLog(@"couldn't find card");
        } else {
            NSLog(@"Found card");
            [searchCard print];
        }
        
        // Read from archive - works when using archiveRootObject method
        /*
        AddressBook *myBook3;
        @autoreleasepool {
            myBook3 = [NSKeyedUnarchiver unarchiveObjectWithFile: @"/Users/nsquire/Desktop/addrbook.arch"];
            [myBook3 list];
        }
         */
    }
    
    return 0;
}

