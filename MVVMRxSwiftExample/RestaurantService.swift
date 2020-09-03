//
//  RestaurantService.swift
//  MVVMRxSwiftExample
//
//  Created by jc on 2020-09-03.
//  Copyright © 2020 jc. All rights reserved.
//

import Foundation
import RxSwift

class RestaurantService {
    func getchRestaurants() -> Observable<[Restaurant]> {
        return Observable.create { (observer) -> Disposable in
            guard let path = Bundle.main.path(forResource: "restaurant", ofType: "json") else {
                observer.onError(NSError(domain: "", code: -1, userInfo: nil))
                return Disposables.create{ }
            }
            
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let restaurants = try JSONDecoder().decode([Restaurant].self, from: data)
                observer.onNext(restaurants)
            } catch (let error) {
                observer.onError(error)
            }
            
            return Disposables.create { }
        }
    }
}
