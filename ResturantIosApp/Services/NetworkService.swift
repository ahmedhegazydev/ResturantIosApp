//
//  NetworkService.swift
//  ResturantIosApp
//
//  Created by A on 8/11/19.
//  Copyright © 2019 A. All rights reserved.
//

import Foundation
import Moya

private let apiKey = "242d544fe443aa59e56d47a3d5f2d6c4"

enum YelpService {
    
    enum BusinessProvider : TargetType {
        
        case search(lat : Double, long : Double)
        
        var baseURL: URL {
            //return URL(string : "https://api.yelp.com/v3/businesses")!
            return URL(string : "https://api.themoviedb.org/3/movie")!
        }
        
        var path: String {
            switch self {
            case .search:
                //return "/search"
                return "/now_playing"
            }
        }
        
        var method: Moya.Method{
            return .get
        }
        
        var sampleData: Data{
            return Data()
        }
        
        var task: Task {
            switch self {
            case let .search(lat, long):
                //return .requestParameters(parameters: ["latitude" : lat, "longitude" : long, "limit" : 1], encoding: URLEncoding.queryString)
                return .requestParameters(parameters: ["api_key" : apiKey, "page" : 1], encoding: URLEncoding.queryString)
            }
        }
        
        var headers: [String : String]? {
            //return ["Authorization" : "Bearer\(apiKey)"]
            return [:]
            //return ["api_key" : apiKey, "" : ]
        }
        
        
    }
}

