//
//  GlanceController.swift
//  Apple_Watch WatchKit Extension
//
//  Created by Hirokazu on 2014/11/20.
//  Copyright (c) 2014年 Hirokazu. All rights reserved.
//

import WatchKit
import Foundation


class GlanceController: WKInterfaceController {

    override init(context: AnyObject?) {
        // Initialize variables here.
        super.init(context: context)
        
        // Configure interface objects here.
        NSLog("%@ init", self)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        NSLog("%@ will activate", self)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        NSLog("%@ did deactivate", self)
        super.didDeactivate()
    }

}
