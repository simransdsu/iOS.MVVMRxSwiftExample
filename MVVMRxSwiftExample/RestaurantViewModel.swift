//
//  RestaurantViewModel.swift
//  MVVMRxSwiftExample
//
//  Created by jc on 2020-09-03.
//  Copyright © 2020 jc. All rights reserved.
//

import Foundation

struct RestaurantViewModel {
    let name: String
    let cuisine: String
    var displayTest: String {
        return name + " - " + cuisine
    }
    
    init(model: Restaurant) {
        self.name = model.name
        self.cuisine = model.cuisine
    }
}
