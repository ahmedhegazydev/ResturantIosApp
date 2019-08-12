//
//  Models.swift
//  ResturantIosApp
//
//  Created by A on 8/11/19.
//  Copyright © 2019 A. All rights reserved.
//

//https://api.themoviedb.org/3/movie/now_playing?api_key=242d544fe443aa59e56d47a3d5f2d6c4&page=1
import Foundation
struct Root : Codable {
    let businesses : [Business]
    
}

struct Business : Codable {
    
    let title :  String
    let overview : String
    
}

struct MovieItem {
    let title : String
    let overview : String
    
    
}


extension MovieItem {
    
    init(business : Business) {
        self.title = business.title
        self.overview = business.overview
        
        
    }
    
}
