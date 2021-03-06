//
//  LFActiveTrip.m
//  TripHistory
//
//  Created by Gilad Gurantz on 3/28/15.
//  Copyright (c) 2015 Lyft. All rights reserved.
//

#import "LFActiveTrip.h"

@interface LFActiveTrip ()

@property (nonatomic, readwrite, assign) LFTripState internalState;
@property (nonatomic, readwrite, strong) NSMutableArray *mutableLocations;

@end

@implementation LFActiveTrip

- (instancetype)initWithLocations:(NSArray *)locations
{
    self = [super initWithLocations:locations];
    if (self) {
        self.mutableLocations = [NSMutableArray array];
    }
    return self;
}

- (LFTripState)state
{
    return self.internalState;
}

- (void)updateState:(LFTripState)state
{
    self.internalState = state;
}

- (void)addLocations:(NSArray *)locations
{
    NSAssert(self.state == LFTripStateActive, @"Trying to add locations to a completed trip");
    [self.mutableLocations addObjectsFromArray:locations];
}

- (NSArray *)locations
{
    return [[super locations] arrayByAddingObjectsFromArray:self.mutableLocations];
}

@end
