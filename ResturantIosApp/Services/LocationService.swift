//
//  LocationService.swift
//  ResturantIosApp
//
//  Created by A on 8/10/19.
//  Copyright © 2019 A. All rights reserved.
//

import Foundation
import CoreLocation


enum Result<T> {
    case success(T)
    case failure(Error)
}

final class LocationService : NSObject {
    
    private let locationManager: CLLocationManager!
    var newLocation : ((Result<CLLocation>)-> Void)?//closure
    var didChangeStatus : ((Bool)-> Void)?//closure
    var status : CLAuthorizationStatus {
        return CLLocationManager.authorizationStatus()
    }
    
    init(manager : CLLocationManager  = .init()) {
        self.locationManager = manager
        super.init()
        self.locationManager.delegate = self
    }
    
    
    func requestLocationAuthorization(){
        self.locationManager.requestWhenInUseAuthorization()
    }
    
    func getLocation(){
        self.locationManager.requestLocation()
    }
    
    
}

extension LocationService : CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
    
        //newLocation!(.failure(error))
        newLocation?(.failure(error))
        
    }
    
//    func locationManager(_ manager: CLLocationManager, didUpdateHeading newHeading: CLHeading) {
//
//    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        if let location = locations.sorted(by: {$0.timestamp > $1.timestamp}).first {
            newLocation?(.success(location))
        }
        
        guard let locValue: CLLocationCoordinate2D = manager.location?.coordinate else
        { return }
        print("locations = \(locValue.latitude) \(locValue.longitude)")
        
        
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .notDetermined, .restricted, .denied:
            didChangeStatus?(false)
        default:
            didChangeStatus?(true)
        }
    }
    
    
    
}


