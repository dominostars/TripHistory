//
//  LFTimeOfDayFormatter.h
//  TripHistory
//
//  Created by Gilad Gurantz on 3/29/15.
//  Copyright (c) 2015 Lyft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LFTimeOfDayFormatter : NSDateFormatter

+ (instancetype)sharedFormatter;

@end
