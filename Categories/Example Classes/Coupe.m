//
//  Coupe.m
//  Categories
//
//  Created by tilakkumar gondi on 25/02/15.
//  Copyright (c) 2015 Tilak. All rights reserved.
//

#import "Coupe.h"
//#import "Car+Maintenance.h"
#import "Car+Protected.h"

@implementation Coupe

- (void)startEngine {
    [super startEngine];
    // Call the protected method here instead of in `drive`
    [self prepareToDrive];
//    [self rotateTires];
}

- (void)drive {
    NSLog(@"VROOOOOOM!");
}


- (void)startEngineAgain {
    NSLog(@"VROOOOOOM Again!");
}
@end
