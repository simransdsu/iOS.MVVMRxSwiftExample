//
//  ViewController.swift
//  MVVMRxSwiftExample
//
//  Created by jc on 2020-09-03.
//  Copyright © 2020 jc. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {
    
    let disposeBag = DisposeBag()
    
    static func instantiate() -> ViewController{
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateInitialViewController() as! ViewController
        return viewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let service = RestaurantService()
        
        service.getchRestaurants().subscribe(onNext: { (restaurants) in
            print(restaurants)
        }, onError: { (error) in
            print(error)
        }, onCompleted: {
            
        }).disposed(by: disposeBag)
    }
}

