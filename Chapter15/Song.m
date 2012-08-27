//
//  Song.m
//  Chapter15
//
//  Created by Nicholas Squire on 8/19/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import "MusicCollection.h"
#import "Song.h"

@implementation Song

@synthesize title, artist, album, playingTime;


-(id) init
{
    self = [super init];
    
    if (self)
    {
        [MusicCollection addSongToLibrary: self];
    }
    
    return self;
}

-(void) setTitle:(NSString *)theTitle andArtist:(NSString *)theArtist andAlbum:(NSString *)theAlbum andPlayingTime:(NSString *)thePlayingTime
{
    self.title = theTitle;
    self.artist = theArtist;
    self.album = theAlbum;
    self.playingTime = thePlayingTime;
}

-(void) print
{
    NSLog(@"Title: %s, Artist: %s, Album: %s, Playing time: %s", [self.title UTF8String], [self.artist UTF8String], [self.album UTF8String], [self.playingTime UTF8String]);
}

/*-(BOOL) isEqual: (Song *) theSong
{
    NSLog(@"In Song's isEqual method");
    
    if ([self.title isEqualToString: theSong.title] == YES &&
        [self.artist isEqualToString: theSong.artist] == YES &&
        [self.album isEqualToString: theSong.album] == YES &&
        [self.playingTime isEqualToString: theSong.playingTime] == YES)
        return YES;
    else
        return NO;
}*/

@end
