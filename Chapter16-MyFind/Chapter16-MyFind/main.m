//
//  main.m
//  Chapter16-MyFind
//
//  Created by Nicholas Squire on 9/3/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSProcessInfo           *proc = [NSProcessInfo processInfo];
        NSArray                 *args = [proc arguments];
        BOOL                    isDir;
        NSFileManager           *fm;
        NSString                *startFolder;
        NSString                *searchString;
        NSString                *path;
        NSDirectoryEnumerator   *dirEnum;
        BOOL                    itemFound = NO;
        
        fm = [NSFileManager defaultManager];
        
        // Check that there's two arguments
        
        if ([args count] != 3) {
            NSLog(@"Usage: %@ starting_folder search_string", [proc processName]);
            return 1;
        }
        
        // Set starting point and search string
        
        startFolder = [args objectAtIndex: 1];
        searchString = [args objectAtIndex: 2];
        
        // Check if startFolder is a folder
        
        [fm fileExistsAtPath: startFolder isDirectory: &isDir];
            
        if (isDir == NO) {
            NSLog(@"Starting directory must be a folder");
            return 2;
        }
        
        // Enumerate the directory and search for the item
        
        dirEnum = [fm enumeratorAtPath: startFolder];
        
        while ((path = [dirEnum nextObject]) != nil) {
            //NSLog(@"Searching, current path: %@", path);
            //NSRange searchRange;
            //searchRange = [path rangeOfString: searchString options: NSCaseInsensitiveSearch];
            //NSLog(@"lastPathComponent: %@", [path lastPathComponent]);
            //NSLog(@"arg: %@", [args objectAtIndex: 2]);
            
            if ( [[path lastPathComponent] isEqualToString: [args objectAtIndex: 2]] ) {
                itemFound = YES;
                NSLog(@"%@", path);
            }
        }
        
        if (itemFound == NO) {
            NSLog(@"Item not found");
        }
        
    }
    return 0;
}

