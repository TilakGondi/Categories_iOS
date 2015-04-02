//
//  Car.h
//  Categories
//
//  Created by tilakkumar gondi on 25/02/15.
//  Copyright (c) 2015 Tilak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property (copy) NSString *model;
@property (readonly) double odometer;

- (void)startEngine;
- (void)drive;
- (void)turnLeft;
- (void)turnRight;
//- (void)rotateTires;

@end
