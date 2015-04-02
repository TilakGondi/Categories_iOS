//
//  Car+Maintenance.h
//  Categories
//
//  Created by tilakkumar gondi on 25/02/15.
//  Copyright (c) 2015 Tilak. All rights reserved.
//

#import "Car.h"

@interface Car (Maintenance)

- (BOOL)needsOilChange;

- (void)changeOil;

- (void)rotateTires;

- (void)jumpBatteryUsingCar:(Car *)anotherCar;

@end
