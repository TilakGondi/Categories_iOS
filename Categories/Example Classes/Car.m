//
//  Car.m
//  Categories
//
//  Created by tilakkumar gondi on 25/02/15.
//  Copyright (c) 2015 Tilak. All rights reserved.
//

#import "Car.h"
#import "Car+Protected.h"

// The class extension

@interface Car ()
@property (readwrite) double odometer;
- (BOOL)engineIsWorking;

@end

//-----------------------------

@implementation Car

@synthesize model = _model;

- (void)startEngine {
    if ([self engineIsWorking]) {
        NSLog(@"Starting the %@'s engine", _model);
    }
}
- (void)drive {
    [self prepareToDrive];
    NSLog(@"Car :: The %@ is now driving", _model);
}
- (void)turnLeft {
    NSLog(@"The %@ is turning left", _model);
}
- (void)turnRight {
    NSLog(@"The %@ is turning right", _model);
}


-(void)setOdometervalue
{
    self.odometer=123;
}

- (BOOL)engineIsWorking {
    // In the real world, this would probably return a useful value
    return YES;
}



@end
