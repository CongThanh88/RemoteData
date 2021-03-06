//
//  Remoter.m
//  SocketServer
//
//  Created by Cong Thanh on 2/2/15.
//  Copyright (c) 2015 com.softfront. All rights reserved.
//

#import "Remoter.h"

typedef enum : NSUInteger {
    REMOTE_PING = 0x00,
    REMOTE_SONG_LIST = 0x01,
    REMOTE_RES = 0x02,
    REMOTE_1ST_RES = 0x03,
    REMOTE_PLAY = 0x04,
    REMOTE_PAUSE = 0x05,
    REMOTE_STOP = 0x06,
    REMOTE_NEXT = 0x07,
    REMOTE_SELECT = 0x08,
    REMOTE_FAVORITE = 0x09,
    REMOTE_UNFAVORITE = 0x0A,
    REMOTE_QUEUE_MOVE_UP = 0x0B,
    REMOTE_QUEUE_MOVE_FIRST = 0x0C,
    REMOTE_QUEUE_MOVE = 0x0D,
    REMOTE_QUEUE_LIST = 0x0E,
    REMOTE_DISCONNECT = 0x0F,
    REMOTE_VOLUME_UP = 0x10,
    REMOTE_VOLUME_DOWN = 0x11
} REMOTE;

@implementation Remoter



@end
