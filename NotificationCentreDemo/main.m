//
//  main.m
//  NotificationCentreDemo
//
//  Created by Jeremy Petter on 2016-09-15.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassOne.h"
#import "ClassTwo.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // Notifications

        ClassOne* classOne = [[ClassOne alloc] init];
        ClassTwo* classTwo = [[ClassTwo alloc] init];

        [classOne sendOutNotification]; // should generate one notification

        ClassTwo* classTwoTwo = [[ClassTwo alloc] init];

        [classOne sendOutNotification]; // should generate two notifications (as there are now two observers)

        

        //KVO

        classOne.observedProperty = @"hello"; //Should not generate notification

        [classOne addObserver:classTwo forKeyPath:@"observedProperty" options:NSKeyValueObservingOptionNew context:nil];

        classOne.observedProperty = @"hello again"; // Should generate notification
        classOne.observedProperty = @"hello a third time"; // Should generate second notification

        [classOne removeObserver:classTwo forKeyPath:@"observedProperty"];
    }
    return 0;
}
