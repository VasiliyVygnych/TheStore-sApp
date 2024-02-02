//
//  MainPresenter.swift
//  TheStore'sApp
//
//  Created by Vasiliy Vygnych on 01.02.2024.
//

import UIKit

class MainPresenter: MainPresenterProtocol {
    
    var view: MainViewProtocol?
    var interactor: MainInteractorInputProtocol?
    var coordinator: AppCoordinatorProtocol?
    
//MARK: - viewDidLoad
    func viewDidLoad() {
        interactor?.fetchData()
    }
//MARK: - clickAnimation
    func clickAnimation(button: UIButton) {
        UIView.animate(withDuration: 0.2,
                       delay: 0,
                       options: .curveEaseOut,
                       animations: {
            button.transform = CGAffineTransform(scaleX: 0.70,
                                                 y: 0.70)
            }, completion: nil)
        UIView.animate(withDuration: 0.3,
                       delay: 0,
                       options: .curveEaseOut,
                       animations: {
            button.transform = CGAffineTransform(scaleX: 1,
                                                 y: 1)
        }, completion: nil)
    }
}
//MARK: - MainInteractorOutputProtocol
extension MainPresenter: MainInteractorOutputProtocol {
    func dataForTheView(model: [SelfModel]) {
        view?.dataSet(model: model)
    }
}
