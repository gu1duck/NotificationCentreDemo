//
//  ClassOne.m
//  NotificationCentreDemo
//
//  Created by Jeremy Petter on 2016-09-15.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

#import "ClassOne.h"

@implementation ClassOne

- (void)sendOutNotification {
    NSNotificationCenter *notificationCenter = [NSNotificationCenter defaultCenter];
    [notificationCenter postNotificationName:@"ObjectOneNotificationName" object:nil];
}

@end
