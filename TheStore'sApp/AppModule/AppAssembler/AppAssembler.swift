//
//  AppAssembler.swift
//  TheStore'sApp
//
//  Created by Vasiliy Vygnych on 01.02.2024.
//

import UIKit

class AppAssembler: AppAssemblerProtocol {
    
//MARK: - createTabBar
    func createTabBar(router: AppCoordinatorProtocol) -> UITabBarController {
        let tabBar = UITabBarController()
        tabBar.modalPresentationStyle = .fullScreen
        tabBar.tabBar.tintColor = .systemGreen
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .white
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
        return tabBar
    }
    
    
    
    
    
    
    
    
    
    
    
//MARK: - createMainItem
    func createDetailItem(coordinator: AppCoordinatorProtocol) -> UIViewController {
        let viewController = DetailViewController()
        let navigation = UINavigationController(rootViewController: viewController)
        var presenter: MainPresenterProtocol & MainInteractorOutputProtocol = MainPresenter()
        var interactor: MainInteractorInputProtocol = MainInteractor()
        let coordinator = coordinator
        let network: NetworkProtocol = Network()
        viewController.presenter = presenter
        presenter.view = viewController
        presenter.interactor = interactor
        presenter.coordinator = coordinator
        interactor.presenter = presenter
        interactor.network = network
        viewController.tabBarItem = UITabBarItem(title: "Главная",
                                                 image: UIImage(systemName: "sparkle"),
                                                 tag: 0)
        return navigation
    }
//MARK: - createMainItem
    func createCatalogItem(coordinator: AppCoordinatorProtocol) -> UIViewController {
        let viewController = CatalogViewController()
        let navigation = UINavigationController(rootViewController: viewController)
        //
        viewController.tabBarItem = UITabBarItem(title: "Каталог",
                                                 image: UIImage(systemName: "square.grid.2x2"),
                                                 tag: 1)
        return navigation
    }
//MARK: - createCartItem
    func createCartItem(coordinator: AppCoordinatorProtocol) -> UIViewController {
        let viewController = CartViewController()
        let navigation = UINavigationController(rootViewController: viewController)
        //
        viewController.tabBarItem = UITabBarItem(title: "Корзина",
                                                 image: UIImage(systemName: "cart"),
                                                 tag: 2)
        return navigation
    }
//MARK: - createProfileItem
    func createProfileItem(coordinator: AppCoordinatorProtocol) -> UIViewController {
        let viewController = ProfileViewController()
        let navigation = UINavigationController(rootViewController: viewController)
        //
        viewController.tabBarItem = UITabBarItem(title: "Профиль",
                                                 image: UIImage(systemName: "person.fill"),
                                                 tag: 3)
        return navigation
    }
}
