//
//  NetworkService.swift
//  ResturantIosApp
//
//  Created by A on 8/11/19.
//  Copyright © 2019 A. All rights reserved.
//

import Foundation
import Moya

enum YelpService {
    enum BusinessProvider : TargetType {
        
        
        var baseURL: URL
        
        var path: String
        
        var method: Method
        
        var sampleData: Data
        
        var task: Task
        
        var headers: [String : String]?
        
        
    }
}

