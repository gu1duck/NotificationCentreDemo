//
//  ClassTwo.m
//  NotificationCentreDemo
//
//  Created by Jeremy Petter on 2016-09-15.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

#import "ClassTwo.h"

@implementation ClassTwo

- (instancetype)init {
    self = [super init];
    if (self) {

        // Set up notification observer
        
        NSNotificationCenter *notificationCenter = [NSNotificationCenter defaultCenter];
        [notificationCenter addObserver:self selector:@selector(handleNotification:) name:@"ObjectOneNotificationName" object:nil];
    }
    return self;
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

// Handle observed notification

- (void)handleNotification:(NSNotification *)notification {
    NSLog(@"received notification!");
}

// Handle KVO

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {

    if ([keyPath isEqualToString:@"observedProperty"]) {

        NSString *newString = change[NSKeyValueChangeNewKey];
        NSLog(@"key value changed: %@", newString);
    }
}

@end
