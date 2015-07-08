//
//  InterfaceController.swift
//  WatchAnimationsSwift WatchKit Extension
//
//  Created by Thai, Kristina on 6/25/15.
//  Copyright © 2015 Kristina Thai. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    //MARK: Sliding text interface
    @IBOutlet var spacerGroup: WKInterfaceGroup!
    
    @IBAction func animate() {
        
        animateWithDuration(0.3, animations: {
            self.spacerGroup.setWidth(0)
        })
        
    }

    @IBAction func reset() {
        self.spacerGroup.setWidth(100)
    }
    
    
    //MARK: Moving button interface

    @IBOutlet var animateButton: WKInterfaceButton!
    @IBOutlet var buttonSpacerGroup: WKInterfaceGroup!
    var buttonMoved: Bool!
    
    @IBAction func animateMovingButton() {
        if (buttonMoved != true) {
            animateWithDuration(0.3, animations: {
                self.buttonSpacerGroup.setHeight(100)
            })
            
            buttonMoved = true
            animateButton.setTitle("Reset")
        } else {
            animateWithDuration(0.3, animations: {
                self.buttonSpacerGroup.setHeight(0)
            })
            
            buttonMoved = false
            animateButton.setTitle("Animate!")
        }
    }
}
