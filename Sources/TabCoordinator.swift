//
//  TabCoordinator.swift
//  AppCoordinator
//
//  Created by Matthew Wyskiel on 7/19/16.
//  Copyright © 2016 Matthew Wyskiel. All rights reserved.
//

import Foundation

public protocol TabCoordinator {
    associatedtype RootType: UIViewController
    var rootController: RootType { get }
    var tabBarItem: UITabBarItem { get }
}

public class AnyTabCoordinator {
    var rootController: UIViewController
    var tabBarItem: UITabBarItem
    
    public init<T: TabCoordinator>(_ tabCoordinator: T) {
        rootController = tabCoordinator.rootController
        tabBarItem = tabCoordinator.tabBarItem
    }
}

public func deGenericize<T: TabCoordinator>(_ coordinator: T) -> AnyTabCoordinator {
    return AnyTabCoordinator(coordinator)
}
