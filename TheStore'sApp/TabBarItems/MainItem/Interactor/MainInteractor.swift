//
//  MainInteractor.swift
//  TheStore'sApp
//
//  Created by Vasiliy Vygnych on 01.02.2024.
//

import Foundation

class MainInteractor: MainInteractorInputProtocol {
    
    var presenter: MainInteractorOutputProtocol?
    var network: NetworkProtocol?
    
    
    func fetchData() {
        network?.fetchData(completion: { model in
            self.presenter?.dataForTheView(model: model)
        })
    }
}
