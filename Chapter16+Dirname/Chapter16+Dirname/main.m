//
//  main.m
//  Chapter16+Dirname
//
//  Created by Squire, Nicholas on 9/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSFileManager   *fm;
        NSString        *path;
        NSProcessInfo   *proc = [NSProcessInfo processInfo];
        NSArray         *args = [proc arguments];
        
        NSLog(@"Arguments: %@", args);
        
        fm = [NSFileManager defaultManager];
        
        //NSLog(@"cwd: %@", [fm currentDirectoryPath]);
        
        // Check for proper arguments
        
        if  ([args count] != 2) {
            NSLog(@"Usage is %@ path", [proc processName]);
            return 1;
        }
        
        // Set the path variable from the argument
        path = [args objectAtIndex: 1];
        
        
        // Output the directory name
        
        NSLog(@"%@", [path stringByDeletingLastPathComponent]);
        
        
        
    }
    return 0;
}

