//
//  AppProtocols.swift
//  TheStore'sApp
//
//  Created by Vasiliy Vygnych on 01.02.2024.
//

import UIKit

protocol AppAssemblerProtocol {
    func createTabBar(router: AppCoordinatorProtocol) -> UITabBarController
    
    func createDetailItem(coordinator: AppCoordinatorProtocol) -> UIViewController
    func createCatalogItem(coordinator: AppCoordinatorProtocol) -> UIViewController
    func createCartItem(coordinator: AppCoordinatorProtocol) -> UIViewController
    func createProfileItem(coordinator: AppCoordinatorProtocol) -> UIViewController
    
}

protocol AppCoordinatorProtocol {
    func initialView()
}



