//
//  Song.m
//  SocketServer
//
//  Created by Cong Thanh on 2/2/15.
//  Copyright (c) 2015 com.softfront. All rights reserved.
//

#import "Song.h"

@implementation Song
+(Song*)parseSongFromResponseString:(NSString *)response
{
    if (response) {
        NSArray *arrayFields = [response componentsSeparatedByString:@"\t"];
        if (arrayFields && arrayFields.count >0) {
            Song *newSong = [[Song alloc]init];
            newSong.number = [arrayFields objectAtIndex:0];
            newSong.title = [arrayFields objectAtIndex:1];
            newSong.title_shorcut = [arrayFields objectAtIndex:2];
            newSong.title_search = [arrayFields objectAtIndex:3];
            newSong.title_search2 = [arrayFields objectAtIndex:4];
            newSong.singer = [arrayFields objectAtIndex:5];
            newSong.genre = [arrayFields objectAtIndex:6];
            newSong.genre_search = [arrayFields objectAtIndex:7];
            newSong.short_lyric = [arrayFields objectAtIndex:8];
            newSong.language = [arrayFields objectAtIndex:9];
            newSong.is_favorite = [[arrayFields objectAtIndex:10] boolValue];
            newSong.is_free = [[arrayFields objectAtIndex:11] boolValue];
            newSong.is_new = [[arrayFields objectAtIndex:12] boolValue];
            return newSong;
        }
    }
    return nil;
}

+(NSArray*)parseListSongResponseString:(NSArray *)listString
{
    if (listString && listString.count>0) {
        NSArray *listSong = [[NSArray alloc]init];
        for (NSString *songResponse in listString) {
            if ( songResponse) {
                Song *newSong = [Song parseSongFromResponseString:songResponse];
                if (newSong) {
                    listSong = [listSong arrayByAddingObject:newSong];
                }
            }
        }
        return listSong;
    }
    return nil;
}
@end
