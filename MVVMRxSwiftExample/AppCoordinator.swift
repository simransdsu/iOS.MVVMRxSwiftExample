//
//  AppCoordinator.swift
//  MVVMRxSwiftExample
//
//  Created by jc on 2020-09-03.
//  Copyright © 2020 jc. All rights reserved.
//

import UIKit

class AppCoordinator {
    var window: UIWindow
    
    init(_ window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let viewController = ViewController.instantiate()
        let navigationViewController = UINavigationController(rootViewController: viewController)
        window.makeKeyAndVisible()
        window.rootViewController = navigationViewController
        
    }
}
