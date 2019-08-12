//
//  LocationViewController.swift
//  ResturantIosApp
//
//  Created by A on 8/10/19.
//  Copyright © 2019 A. All rights reserved.
//

import UIKit
import Moya




class LocationViewController: UIViewController {

    @IBOutlet weak var locationView : LocationView!
    var locationService : LocationService?
    
    let service = MoyaProvider<YelpService.BusinessProvider>()
    let jsonDecoder = JSONDecoder()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
        //2019-08-10 23:56:31.809327+0200 ResturantIosApp[2155:63991] This app has attempted to access privacy-sensitive data without a usage description. The app's Info.plist must contain an NSLocationWhenInUseUsageDescription key with a string value explaining to the user how the app uses this data
        locationView.didTabAllow = {[weak self] in
            print("allow tabbed")
            
            self?.locationService?.requestLocationAuthorization()
            
            //testing moya
            self?.service.request(.search(lat: 37.786882, long: -122.399972), completion: { (result) in
                
                switch result {
                case .success(let response):
                    //print(try? JSONSerialization.jsonObject(with: response.data, options: []) )
                    let root = try? self?.jsonDecoder.decode(Root.self, from: response.data)
                    print(root)
                    
                    
                    break
                case .failure(let error):
                    print("Error serializing data \(error)")
                    break
                }
                
            })
            
        }
        
        locationService?.didChangeStatus = { [weak self] success in
            if success {
                self?.locationService?.getLocation()
            }
        }
        
        
        locationService?.newLocation = {
            [weak self] result in
            switch result {
            case .success(let location):
                print(location)
            case .failure(let error):
                assertionFailure("Error getting user current location \(error)")
                
            }
            
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
