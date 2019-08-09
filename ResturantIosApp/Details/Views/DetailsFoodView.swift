//
//  DetailsFoodView.swift
//  ResturantIosApp
//
//  Created by A on 8/9/19.
//  Copyright © 2019 A. All rights reserved.
//

import Foundation
import UIKit
import MapKit

@IBDesignable class DetailsFoodView : BaseView {
    
    @IBOutlet weak var collectionView : UICollectionView!
    @IBOutlet weak var pageControll : UIPageControl!
    @IBOutlet weak var labelPrice : UILabel!
    @IBOutlet weak var labelHours : UILabel!
    @IBOutlet weak var labelLocation : UILabel!
    @IBOutlet weak var labelRatings : UILabel!
    @IBOutlet weak var mapView : MKMapView!
    
    @IBAction func handleControl(_ sender : UIPageControl){
        
    }
    
    
}


