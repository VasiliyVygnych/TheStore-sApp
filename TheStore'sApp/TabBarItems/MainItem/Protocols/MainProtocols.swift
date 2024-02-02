//
//  MainProtocols.swift
//  TheStore'sApp
//
//  Created by Vasiliy Vygnych on 01.02.2024.
//

import Foundation

import UIKit

protocol MainViewProtocol {
    var presenter: MainPresenterProtocol? { get set }
  
    func dataSet(model: [SelfModel])
}

protocol MainPresenterProtocol {
    var view: MainViewProtocol? { get set }
    var interactor: MainInteractorInputProtocol? { get set }
    var coordinator: AppCoordinatorProtocol? { get set }

    func clickAnimation(button: UIButton)
    func viewDidLoad()
}

protocol MainInteractorInputProtocol {
    var presenter: MainInteractorOutputProtocol? { get set }
    var network: NetworkProtocol? { get set }
    
    func fetchData()
}

protocol MainInteractorOutputProtocol {
    
    func dataForTheView(model: [SelfModel])
}

protocol NetworkProtocol {
    func fetchData(completion: @escaping ([SelfModel]) -> Void)
    
}
