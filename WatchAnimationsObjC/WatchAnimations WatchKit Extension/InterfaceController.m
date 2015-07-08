//
//  InterfaceController.m
//  WatchAnimations WatchKit Extension
//
//  Created by Thai, Kristina on 6/25/15.
//  Copyright © 2015 Kristina Thai. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()
//Sliding text interface
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceGroup *spacerGroup;

//Moving button interface
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceGroup *buttonSpacerGroup;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceButton *animateButton;
@property (assign, nonatomic) BOOL buttonMoved;

@end


@implementation InterfaceController

#pragma mark - Sliding text interface

- (IBAction)animate {
    
    [self animateWithDuration:0.3 animations:^{
        [self.spacerGroup setWidth:0];
    }];
    
}

- (IBAction)reset {
    [self.spacerGroup setWidth:100];
}

#pragma mark - Moving button interface

- (IBAction)animateMovingButton {
    
    if (!self.buttonMoved) {
        [self animateWithDuration:0.3 animations:^{
            [self.buttonSpacerGroup setHeight:100];
        }];
        self.buttonMoved = YES;
        [self.animateButton setTitle:@"Reset"];
    } else {
        [self animateWithDuration:0.3 animations:^{
            [self.buttonSpacerGroup setHeight:0];
        }];
        self.buttonMoved = NO;
        [self.animateButton setTitle:@"Animate!"];
    }
    
    
}

@end



