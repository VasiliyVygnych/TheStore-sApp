//
//  AppCoordinator.swift
//  TheStore'sApp
//
//  Created by Vasiliy Vygnych on 01.02.2024.
//

import UIKit

class AppCoordinator: AppCoordinatorProtocol {
    
    var navigationController: UINavigationController?
    var assembler: AppAssemblerProtocol
    
    init(navigationController: UINavigationController?,
         assembler: AppAssemblerProtocol = AppAssembler()) {
        self.navigationController = navigationController
        self.assembler = assembler
    }
//MARK: - initialView
    func initialView() {
        if let navigationController = navigationController {
            let tabBar = assembler.createTabBar(router: self)
            
            let main = assembler.createDetailItem(coordinator: self)
            
            let catalog = assembler.createCatalogItem(coordinator: self)
            let cart = assembler.createCartItem(coordinator: self)
            let profile = assembler.createProfileItem(coordinator: self)
            tabBar.viewControllers = [main,
                                      catalog,
                                      cart,
                                      profile]
            navigationController.viewControllers = [tabBar]
        }
    }
}

