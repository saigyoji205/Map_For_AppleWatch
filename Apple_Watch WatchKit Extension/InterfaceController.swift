//
//  InterfaceController.swift
//  Apple_Watch WatchKit Extension
//
//  Created by Hirokazu on 2014/11/20.
//  Copyright (c) 2014年 Hirokazu. All rights reserved.
//

import WatchKit
import Foundation
import MapKit
import CoreLocation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet var wkInterfaceMap: WKInterfaceMap!
    
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
        
        let myLat: CLLocationDegrees = 37.506804
        
        let myLon: CLLocationDegrees = 139.930531
        
        let myCoordinate: CLLocationCoordinate2D = CLLocationCoordinate2DMake(myLat, myLon)
        
        // 縮尺.
        
        let myLatDist : CLLocationDistance = 100
        
        let myLonDist : CLLocationDistance = 100
        
        
        
        // Regionを作成.
        
        let myRegion: MKCoordinateRegion = MKCoordinateRegionMakeWithDistance(myCoordinate, myLatDist, myLonDist)
        
        wkInterfaceMap.setCoordinateRegion(myRegion)
        
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        NSLog("%@ did deactivate", self)
        super.didDeactivate()
    }

}
