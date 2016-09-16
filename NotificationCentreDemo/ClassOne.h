//
//  ClassOne.h
//  NotificationCentreDemo
//
//  Created by Jeremy Petter on 2016-09-15.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassOne : NSObject

@property (nonatomic, strong) NSString *observedProperty;

- (void)sendOutNotification;

@end
