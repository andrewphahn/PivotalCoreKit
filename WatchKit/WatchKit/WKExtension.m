//
//  WKExtension.m
//  WatchKit
//
//  Created by Andy Hahn on 8/25/15.
//  Copyright © 2015 Pivotal. All rights reserved.
//

#import "WKExtension.h"

@interface PCKMessageCapturer ()

+ (WKExtension *)sharedExtension NS_REQUIRES_SUPER;

- (void)openSystemURL:(NSURL *)url;

@end

@implementation WKExtension

static WKExtension *sharedInstance;

+ (WKExtension *)sharedExtension {
    [super sharedExtension];
    return sharedInstance;
}

+ (void)initialize {
    static BOOL initialized = NO;
    if(!initialized) {
        initialized = YES;
        sharedInstance = [[self alloc] init];
    }
}

- (void)openSystemURL:(NSURL *)url {
    [super openSystemURL:url];
}

@end
