//
//  Network.swift
//  TheStore'sApp
//
//  Created by Vasiliy Vygnych on 02.02.2024.
//

import UIKit

class Network: NetworkProtocol {
    
    func fetchData(completion: @escaping ([SelfModel]) -> Void) {
        let reviewModel = [SelfModel(name: "Василий В.",
                                     data: "02.02.2024",
                                     Title: "Все отлично, продукт 10 из 10, вкус цвет просто великолепный. Покупал в подарок, все довольны!",
                                     ratingCount: 5),
                           SelfModel(name: "Алексей Г.",
                                     data: "19.01.2023",
                                     Title: "Все хорошо, есть можно!",
                                     ratingCount: 4),
                           SelfModel(name: "Мария М.",
                                     data: "22.07.2023",
                                     Title: "Не понимаю кто есть эти каши, фу..",
                                     ratingCount: 2),
                           SelfModel(name: "Григорий П.",
                                     data: "21.07.2023",
                                     Title: "За обе щеки сожрал, вкусно, рекомендую!!",
                                     ratingCount: 5),
                           SelfModel(name: "Анна Г.",
                                     data: "20.05.2020",
                                     Title: "Мне посоветовала подруга, раньще ничего о ней не слышала. С момента покупки моя жизнь изменилась в лучшую стлрону.",
                                     ratingCount: 4.5)]
            completion(reviewModel)
    }
}
