//
//  Song.m
//  Chapter15
//
//  Created by Nicholas Squire on 8/19/12.
//  Copyright (c) 2012 None. All rights reserved.
//

#import "Song.h"

@implementation Song

@synthesize title, artist, album, playingTime;

-(void) setTitle:(NSString *)theTitle andArtist:(NSString *)theArtist andAlbum:(NSString *)theAlbum andPlayingTime:(NSString *)thePlayingTime
{
    self.title = theTitle;
    self.artist = theArtist;
    self.album = theAlbum;
    self.playingTime = thePlayingTime;
}

@end
