//
//  main.m
//  Chapter16
//
//  Created by Nicholas Squire on 9/2/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // #1
        
        NSFileManager   *fm;
        NSString        *dest;
        NSArray         *sources;
        BOOL            isDir;
        NSProcessInfo   *proc = [NSProcessInfo processInfo];
        NSArray         *args = [proc arguments];
        
        fm = [NSFileManager defaultManager];
        
        // Check for two arguments on the command line
        
        NSLog(@"Args: %@", args);
        
        if ([args count] < 3) {
            NSLog(@"Usage: %@ source_file target_file or %@ source_file ... target_directory", [proc processName], [proc processName]);
            return 1;
        } else {
            NSRange argsRange;
            argsRange.location = 1;
            argsRange.length = ([args count] - 2);
            
            sources = [args subarrayWithRange: argsRange];
            dest = [args lastObject];
            
            NSLog(@"Sources: %@", sources);
            NSLog(@"Destination: %@", dest);
            
            // Make sure the source files can be read
            
            for (NSString *theFile in sources) {
                NSLog(@"Checking file %@", theFile);
                
                if ([fm isReadableFileAtPath: theFile] == NO) {
                    NSLog(@"Can't read %@", theFile);
                    NSLog(@"Current directory %@", [fm currentDirectoryPath]);
                    return 2;
                }
            }
        }
        
        // See if the destination file is a directory
        
        [fm fileExistsAtPath: dest isDirectory: &isDir];
        
        if (isDir == NO && [args count] > 3) {
            NSLog(@"Last argument must be a directory");
            return 3;
        }
        
        
        // Remove the destination file if it already exists and is not a directory
        
        if (isDir == NO) {
            [fm removeItemAtPath: dest error: NULL];
        }
        
        // Okay, time to perform the copy
        
        for (NSString *theFile in sources) {
            NSLog(@"Copying files...");
            
            // Reset destination root in each loop
            dest = [args lastObject];
            
            if (isDir == YES) {
                dest = [dest stringByAppendingPathComponent: [theFile lastPathComponent]];
            }
            
            NSLog(@"Destination of file: %@", dest);
            
            if ([fm copyItemAtPath: theFile toPath: dest error: NULL] == NO) {
                NSLog(@"Copy error - file: %@ destination: %@", theFile, dest);
                NSLog(@"Copy failed!");
                return 4;
            }
        }
        
        NSLog(@"Copy of %@ to %@ succeeded!", sources, [args lastObject]);
    
    }
    return 0;
}

