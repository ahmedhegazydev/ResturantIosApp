//
//  AppDelegate.swift
//  ResturantIosApp
//
//  Created by A on 8/6/19.
//  Copyright © 2019 A. All rights reserved.
//

import UIKit
import Moya


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    //let window  =  UIWindow()
    let locationService  = LocationService()
    let storyBoard = UIStoryboard(name: "Main", bundle: nil)
    let service = MoyaProvider<YelpService.BusinessProvider>()
    let jsonDecoder = JSONDecoder()
    
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        switch locationService.status {
        case .denied, .restricted, .notDetermined:
            let locationViewController = storyBoard.instantiateViewController(withIdentifier: "LocationViewControler") as! LocationViewController
            locationViewController.locationService = locationService
            window?.rootViewController = locationViewController
            print("")
            break
        default:
            //assertionFailure()
            print("Error")
            break
        }
        window?.makeKeyAndVisible()
        
        return true
    }

   
    

}

