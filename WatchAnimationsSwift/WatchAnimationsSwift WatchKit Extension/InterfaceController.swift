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

    @IBOutlet var spacerGroup: WKInterfaceGroup!
    
    
    @IBAction func animate() {
        
        animateWithDuration(0.3, animations: {
            self.spacerGroup.setWidth(0)
        })
        
    }

    @IBAction func reset() {
        animateWithDuration(0.3, animations: {
            self.spacerGroup.setWidth(100)
        })
    }
}
