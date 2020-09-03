//
//  RestaurantsListViewModel.swift
//  MVVMRxSwiftExample
//
//  Created by jc on 2020-09-03.
//  Copyright © 2020 jc. All rights reserved.
//

import Foundation
import RxSwift

final class RestaurantsListViewModel {
    let title = "Restaurants"
    
    private let restaurantService: RestaurantServiceProtocol
    
    init(restaurantService: RestaurantServiceProtocol = RestaurantService()) {
        self.restaurantService = restaurantService
    }
    
    func fetchRestaurantViewModels() ->  Observable<[RestaurantViewModel]> {
        return self.restaurantService
            .fetchRestaurants()
            .map{$0.map {
                RestaurantViewModel(model: $0)
            }                
        }
    }
}
