//
//  Car+Protected.m
//  Categories
//
//  Created by tilakkumar gondi on 25/02/15.
//  Copyright (c) 2015 Tilak. All rights reserved.
//

#import "Car+Protected.h"

@implementation Car (Protected)

- (void)prepareToDrive {
    NSLog(@" Car+Protected.h :Doing some internal work to get the %@ ready to drive",
          [self model]);
}


@end
