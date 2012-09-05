//
//  main.m
//  Chapter16-Baseline
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
        NSString        *suffix;
        NSProcessInfo   *proc = [NSProcessInfo processInfo];
        NSArray         *args = [proc arguments];
        
        NSLog(@"Arguments: %@", args);
        
        fm = [NSFileManager defaultManager];
        
        //NSLog(@"cwd: %@", [fm currentDirectoryPath]);
        
        // Check for proper arguments
        
        if  ([args count] > 3 || [args count] < 2) {
            NSLog(@"Usage is %@ path [suffix]", [proc processName]);
            return 1;
        }
        
        path = [args objectAtIndex: 1];
        
        if ([args count] == 3) {
            suffix = [args objectAtIndex: 2];
            path = [path stringByReplacingOccurrencesOfString: suffix withString:@""];
        }
        
        // Output the base name
        
        if ([args count] == 3) {
            
            NSLog(@"%@", [[path lastPathComponent] stringByReplacingOccurrencesOfString: suffix withString: @""]);
        } else {
            NSLog(@"%@", [path lastPathComponent]);
        }
        
        //[[path lastPathComponent] string]
        
        
    }
    return 0;
}

