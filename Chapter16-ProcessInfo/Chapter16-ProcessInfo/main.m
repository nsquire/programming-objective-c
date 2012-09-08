//
//  main.m
//  Chapter16-ProcessInfo
//
//  Created by Nicholas Squire on 9/7/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+TempFiles.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        
        NSLog(@"arguments: %@:", [proc arguments]);
        NSLog(@"environment: %@:", [proc environment]);
        NSLog(@"process identifier: %i", [proc processIdentifier]);
        NSLog(@"process name: %@:", [proc processName]);
        NSLog(@"globally unique string: %@:", [proc globallyUniqueString]);
        NSLog(@"host name: %@:", [proc hostName]);
        NSLog(@"environment: %lu:", [proc operatingSystem]);
        NSLog(@"operating system name: %@:", [proc operatingSystemName]);
        NSLog(@"operating system version string: %@:", [proc operatingSystemVersionString]);
        
        NSLog(@"--------------------------------------------");
        [NSString temporaryFileName];
        NSLog(@"--------------------------------------------");
        
        NSUInteger kBufSize = 8;
        NSFileHandle *inFile, *outFile;
        NSData *buffer;
        
        // Open the test file for reading
        
        inFile = [NSFileHandle fileHandleForReadingAtPath: @"testfile"];
        
        if (inFile == nil) {
            NSLog(@"Open testfile for reading failed");
            return 1;
        }
        
        // Create the output file if necessary
        
        [[NSFileManager defaultManager] createFileAtPath: @"testout" contents: nil attributes: nil];
        
        // Now open outfile for writing
        
        outFile = [NSFileHandle fileHandleForWritingAtPath: @"testout"];
        
        if (outFile == nil) {
            NSLog(@"Open of testout for writing failed");
            return 2;
        }
        
        // Truncate the output file since it may contain data
        
        [outFile truncateFileAtOffset: 0];
        
        // Read the data from inFile and write it to the outFile
        
        //buffer = [inFile readDataToEndOfFile];
        
        do {
            buffer = [inFile readDataOfLength: kBufSize];
            [outFile writeData: buffer];
        } while ([buffer length] != 0);
        
        // Close the two files
        
        [inFile closeFile];
        [outFile closeFile];
        
        // Verify the file's contents
        
        NSLog(@"%@", [NSString stringWithContentsOfFile: @"testout" encoding: NSUTF8StringEncoding error: NULL]);
        
        NSLog(@"--------------------------------------------");

        NSFileHandle *inFile2, *output;
        NSData *buffer2;
        
        // Open the test file for reading
        
        inFile2 = [NSFileHandle fileHandleForReadingAtPath: @"testout"];
        
        if (inFile2 == nil) {
            NSLog(@"Open testfile for reading failed");
            return 3;
        }
        
        //fileHandleWithStandardOutput
        output = [NSFileHandle fileHandleWithStandardOutput];
        
        do {
            buffer2 = [inFile2 readDataOfLength: 128];
            [output writeData: buffer2];
        } while (buffer2.length != 0);
        
        [inFile2 closeFile];
        [output closeFile];
        
        NSLog(@"--------------------------------------------");
        
        NSURL *myURL = [NSURL URLWithString: @"http://bit.ly/aycNwd"];
        NSDictionary *myDict = [NSDictionary dictionaryWithContentsOfURL: myURL];
        NSLog(@"%@", myDict);

    }
    return 0;
}

