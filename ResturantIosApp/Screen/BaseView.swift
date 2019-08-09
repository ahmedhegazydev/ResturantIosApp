//
//  BaseView.swift
//  ResturantIosApp
//
//  Created by A on 8/9/19.
//  Copyright © 2019 A. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class BaseView : UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configure()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.configure()
        
        
    }
    
    
    func configure() {
        
    }
}
