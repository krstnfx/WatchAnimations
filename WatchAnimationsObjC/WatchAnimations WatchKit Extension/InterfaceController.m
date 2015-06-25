//
//  InterfaceController.m
//  WatchAnimations WatchKit Extension
//
//  Created by Thai, Kristina on 6/25/15.
//  Copyright © 2015 Kristina Thai. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceGroup *spacerGroup;

@end


@implementation InterfaceController

- (IBAction)animate {
    
    [self animateWithDuration:0.3 animations:^{
        [self.spacerGroup setWidth:0];
    }];
    
}

- (IBAction)reset {
    [self animateWithDuration:0.3 animations:^{
        [self.spacerGroup setWidth:100];
        
    }];

}

@end



