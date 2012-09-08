//
//  NSString+TempFiles.m
//  Chapter16-ProcessInfo
//
//  Created by Nicholas Squire on 9/7/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import "NSString+TempFiles.h"

@implementation NSString (TempFiles)

+(NSString *) temporaryFileName
{
    
    NSProcessInfo *proc = [NSProcessInfo processInfo];
    
    // Get the working directory
    
    NSString *tempDir = NSTemporaryDirectory();
    NSLog(@"temp dir: %@", tempDir);
    
    NSString *tempFile = [tempDir stringByAppendingString: [proc globallyUniqueString]];
    NSLog(@"temp file: %@", tempFile);
    return tempFile;
}


@end
