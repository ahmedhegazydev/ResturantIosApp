//
//  LocationService.swift
//  ResturantIosApp
//
//  Created by A on 8/10/19.
//  Copyright © 2019 A. All rights reserved.
//

import Foundation
import CoreLocation

final class LocationService : NSObject {
    
    private let locationManager: CLLocationManager!
    
    
    init(manager : CLLocationManager  = .init()) {
        self.locationManager = manager
        super.init()
        self.locationManager.delegate = self
        
        
    }
}

extension LocationService : CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        
    }
    
//    func locationManager(_ manager: CLLocationManager, didUpdateHeading newHeading: CLHeading) {
//
//    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        
    }
    
    
    
}


