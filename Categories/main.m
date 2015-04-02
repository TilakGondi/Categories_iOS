//
//  main.m
//  Categories
//
//  Created by tilakkumar gondi on 25/02/15.
//  Copyright (c) 2015 Tilak. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Car.h"
#import "Car+Maintenance.h"
#import "Coupe.h"

int main(int argc, char * argv[])
{
    @autoreleasepool {
        
        Car *porsche = [[Car alloc] init];
        porsche.model = @"Porsche 911 Turbo";
        
        Car *ford = [[Car alloc] init];
        ford.model = @"Ford F-150";
//        ford.odometer = 123;
        NSLog(@"\n--------------\nCalling for Ford Car Class Object\n--------------");
        [ford startEngine];
        [ford drive];  // Calls the protected method prepareToDrive
        
        // "Standard" functionality from Car.h
        NSLog(@"\n--------------\nCalling for Porsche Car Class Object\n--------------");
        [porsche startEngine];
        
        [porsche drive]; // Calls the protected method prepareToDrive
        [porsche turnLeft];
        [porsche turnRight];
        
        Coupe *ford1 = [[Coupe alloc] init];
        ford1.model = @"Ford F-250";
        NSLog(@"\n--------------\nCalling for Ford1 Coupe Class Object\n--------------");
        [ford1 startEngine];
        [ford1 drive];
        [ford1 turnLeft];
        [ford1 startEngineAgain];
        
        //
        
         SEL protectedMethod = @selector(prepareToDrive);
        if ([porsche respondsToSelector:protectedMethod]) {
            // This *will* work
            NSLog(@"\n--------------\nCalling using performSelector for Porsche Car Class Object\n--------------");
            [porsche performSelector:protectedMethod];
        }
        
        // Additional methods from Car+Maintenance.h
        if ([porsche needsOilChange]) {
            [porsche changeOil];
        }
        [porsche rotateTires];
        [porsche jumpBatteryUsingCar:ford];
        
        
//        [porsche startEngineAgain];
        
        
       
    }
     return 0;
}
