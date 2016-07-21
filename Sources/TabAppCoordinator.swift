//
//  AppCoordinator.swift
//  AppCoordinator
//
//  Created by Matthew Wyskiel on 7/19/16.
//  Copyright © 2016 Matthew Wyskiel. All rights reserved.
//

import UIKit

public class TabAppCoordinator {
    
    var tabBarController: UITabBarController
    var tabs: [AnyTabCoordinator]
    
    public init(tabBarController: UITabBarController, tabs: [AnyTabCoordinator]) {
        self.tabBarController = tabBarController
        self.tabs = tabs
    }
    
    public func start() {
        tabBarController.viewControllers = tabs.map { (coordinator) -> UIViewController in
            return coordinator.rootController
        }
    }
    
}
