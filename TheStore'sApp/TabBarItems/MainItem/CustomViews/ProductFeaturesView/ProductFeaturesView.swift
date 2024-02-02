//
//  ProductFeaturesView.swift
//  TheStore'sApp
//
//  Created by Vasiliy Vygnych on 02.02.2024.
//

import UIKit

class ProductFeaturesView: UIView {
    
    var presenter: MainPresenterProtocol?
    
//MARK: - UILabel
    private var productionLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .light)
        label.textColor = .black
        label.text = "Производство ..................................."
        return label
    }()
    private var kkalLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .light)
        label.textColor = .black
        label.numberOfLines = 0
        label.text = "Энергетическая ценность, ккал/100г ....................................................................................."
        return label
    }()
    private var fatsLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .light)
        label.textColor = .black
        label.text = "Жиры/100г ..................................................................................."
        return label
    }()
    private var proteinLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .light)
        label.textColor = .black
        label.text = "Белки/100г ..................................................................................."
        return label
    }()
    private var carbohydratesLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .light)
        label.textColor = .black
        label.text = "Углеводы/100г ..................................................................................."
        return label
    }()
    
    
    private var productionLabel1: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .light)
        label.textColor = .black
        label.numberOfLines = 0
        label.text = "Россия, Краснодарский край"
        return label
    }()
    private var kkalLabel1: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .light)
        label.textColor = .black
        label.numberOfLines = 0
        label.text = "25 ккал, 105 кДж"
        label.textAlignment = .right
        return label
    }()
    private var fatsLabel1: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .light)
        label.textColor = .black
        label.text = "0,1 г"
        return label
    }()
    private var proteinLabel1: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .light)
        label.textColor = .black
        label.text = "1,3 г"
        return label
    }()
    private var carbohydratesLabel1: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .light)
        label.textColor = .black
        label.text = "3,3 г"
        return label
    }()
//MARK: - init
    init() {
        super.init(frame: .zero)
        setupeViews()
        setupeConstraint()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
private extension ProductFeaturesView {
//MARK: - setupeViews
    func setupeViews() {
        self.addSubview(productionLabel)
        self.addSubview(kkalLabel)
        self.addSubview(fatsLabel)
        self.addSubview(proteinLabel)
        self.addSubview(carbohydratesLabel)
        
        self.addSubview(productionLabel1)
        self.addSubview(kkalLabel1)
        self.addSubview(fatsLabel1)
        self.addSubview(proteinLabel1)
        self.addSubview(carbohydratesLabel1)
    }
//MARK: - setupeConstraint
    func setupeConstraint() {
        NSLayoutConstraint.activate([
            productionLabel.topAnchor.constraint(equalTo: self.topAnchor),
            productionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                constant: 16),
            productionLabel.heightAnchor.constraint(equalToConstant: 20),
            productionLabel.trailingAnchor.constraint(equalTo: productionLabel1.leadingAnchor,
                                                constant: -5)
        ])
        NSLayoutConstraint.activate([
            kkalLabel.topAnchor.constraint(equalTo: productionLabel.bottomAnchor,
                                            constant: 10),
            kkalLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                constant: 16),
            kkalLabel.heightAnchor.constraint(equalToConstant: 50),
            kkalLabel.trailingAnchor.constraint(equalTo: kkalLabel1.leadingAnchor,
                                                constant: -5)
        ])
        NSLayoutConstraint.activate([
            fatsLabel.topAnchor.constraint(equalTo: kkalLabel.bottomAnchor,
                                            constant: 10),
            fatsLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                constant: 16),
            fatsLabel.heightAnchor.constraint(equalToConstant: 20),
            fatsLabel.trailingAnchor.constraint(equalTo: fatsLabel1.leadingAnchor,
                                                constant: -5)
        ])
        NSLayoutConstraint.activate([
            proteinLabel.topAnchor.constraint(equalTo: fatsLabel.bottomAnchor,
                                            constant: 10),
            proteinLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                constant: 16),
            proteinLabel.heightAnchor.constraint(equalToConstant: 20),
            proteinLabel.trailingAnchor.constraint(equalTo: proteinLabel1.leadingAnchor,
                                                   constant: -5)
        ])
        NSLayoutConstraint.activate([
            carbohydratesLabel.topAnchor.constraint(equalTo: proteinLabel.bottomAnchor,
                                            constant: 10),
            carbohydratesLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                constant: 16),
            carbohydratesLabel.heightAnchor.constraint(equalToConstant: 20),
            carbohydratesLabel.trailingAnchor.constraint(equalTo: carbohydratesLabel1.leadingAnchor,
                                                         constant: -5)
        ])

        
        
        NSLayoutConstraint.activate([
            productionLabel1.topAnchor.constraint(equalTo: self.topAnchor),
            productionLabel1.trailingAnchor.constraint(equalTo: self.trailingAnchor,
                                                constant: -16),
            productionLabel1.heightAnchor.constraint(lessThanOrEqualToConstant: 50),
            productionLabel1.widthAnchor.constraint(lessThanOrEqualToConstant: 200)
        ])
        NSLayoutConstraint.activate([
            kkalLabel1.topAnchor.constraint(equalTo: productionLabel1.bottomAnchor,
                                            constant: 33),
            kkalLabel1.trailingAnchor.constraint(equalTo: self.trailingAnchor,
                                                constant: -16),
            kkalLabel1.heightAnchor.constraint(lessThanOrEqualToConstant: 50),
            kkalLabel1.widthAnchor.constraint(greaterThanOrEqualToConstant: 50)
        ])
        NSLayoutConstraint.activate([
            fatsLabel1.topAnchor.constraint(equalTo: kkalLabel1.bottomAnchor,
                                            constant: 20),
            fatsLabel1.trailingAnchor.constraint(equalTo: self.trailingAnchor,
                                                constant: -16),
            fatsLabel1.heightAnchor.constraint(equalToConstant: 20),
            fatsLabel1.widthAnchor.constraint(lessThanOrEqualToConstant: 50)
        ])
        NSLayoutConstraint.activate([
            proteinLabel1.topAnchor.constraint(equalTo: fatsLabel1.bottomAnchor,
                                            constant: 10),
            proteinLabel1.trailingAnchor.constraint(equalTo: self.trailingAnchor,
                                                constant: -16),
            proteinLabel1.heightAnchor.constraint(equalToConstant: 20),
            proteinLabel1.widthAnchor.constraint(lessThanOrEqualToConstant: 50)
        ])
        NSLayoutConstraint.activate([
            carbohydratesLabel1.topAnchor.constraint(equalTo: proteinLabel1.bottomAnchor,
                                            constant: 10),
            carbohydratesLabel1.trailingAnchor.constraint(equalTo: self.trailingAnchor,
                                                constant: -16),
            carbohydratesLabel1.heightAnchor.constraint(equalToConstant: 20),
            carbohydratesLabel1.widthAnchor.constraint(lessThanOrEqualToConstant: 120)
        ])
    }
}
