//
//  LocationView.swift
//  ResturantIosApp
//
//  Created by A on 8/9/19.
//  Copyright © 2019 A. All rights reserved.
//

import UIKit
import Foundation

@IBDesignable class LocationView: BaseView {

    @IBOutlet weak var btnAllow : UIButton!
    @IBOutlet weak var btnDeny : UIButton!
    
    
    var didTabAllow : (() -> Void)?
    
    @IBAction func allowAction(_ sender : UIButton){
        didTabAllow?()
    }
    
    @IBAction func denyAction(_ sender : UIButton){
        
    }
    
    
    
}
