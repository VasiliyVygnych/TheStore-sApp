//
//  AllProductFeaturesView.swift
//  TheStore'sApp
//
//  Created by Vasiliy Vygnych on 02.02.2024.
//

import UIKit

class AllProductFeaturesView: UIView {
    
    var presenter: MainPresenterProtocol?
    
//MARK: - UILabel
    private var firstLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .light)
        label.textColor = .black
        label.text = "Text ..................................................................................."
        return label
    }()
    private var secondLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .light)
        label.textColor = .black
        label.text = "Text ..................................................................................."
        return label
    }()
    private var fatsLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .light)
        label.textColor = .black
        label.text = "Text ..................................................................................."
        return label
    }()
    private var thirdLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .light)
        label.textColor = .black
        label.text = "Text ..................................................................................."
        return label
    }()
    private var fourthLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .light)
        label.textColor = .black
        label.text = "Text ..................................................................................."
        return label
    }()
    private var fifthLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .light)
        label.textColor = .black
        label.text = "Text ..................................................................................."
        return label
    }()
    private var sixthLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .light)
        label.textColor = .black
        label.text = "Text ..................................................................................."
        return label
    }()
    private var seventhLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .light)
        label.textColor = .black
        label.text = "Text ..................................................................................."
        return label
    }()
    
    
    
    
    private var firstLabel1: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .light)
        label.textColor = .black
        label.text = "Text"
        return label
    }()
    private var secondLabel1: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .light)
        label.textColor = .black
        label.text = "Text"
        return label
    }()
    private var fatsLabel1: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .light)
        label.textColor = .black
        label.text = "Text"
        return label
    }()
    private var thirdLabel1: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .light)
        label.textColor = .black
        label.text = "Text"
        return label
    }()
    private var fourthLabel1: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .light)
        label.textColor = .black
        label.text = "Text"
        return label
    }()
    private var fifthLabel1: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .light)
        label.textColor = .black
        label.text = "Text"
        return label
    }()
    private var sixthLabel1: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .light)
        label.textColor = .black
        label.text = "Text"
        return label
    }()
    private var seventhLabel1: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .light)
        label.textColor = .black
        label.text = "Text"
        return label
    }()
//MARK: - init
    init() {
        super.init(frame: .zero)
        setupeView()
        setupeConstraint()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
private extension AllProductFeaturesView {

//MARK: - setupeView
    func setupeView() {
        self.addSubview(firstLabel)
        self.addSubview(secondLabel)
        self.addSubview(fatsLabel)
        self.addSubview(thirdLabel)
        self.addSubview(fourthLabel)
        self.addSubview(fifthLabel)
        self.addSubview(sixthLabel)
        self.addSubview(seventhLabel)
        
        self.addSubview(firstLabel1)
        self.addSubview(secondLabel1)
        self.addSubview(fatsLabel1)
        self.addSubview(thirdLabel1)
        self.addSubview(fourthLabel1)
        self.addSubview(fifthLabel1)
        self.addSubview(sixthLabel1)
        self.addSubview(seventhLabel1)
    }
//MARK: - setupeConstraint
    func setupeConstraint() {
        NSLayoutConstraint.activate([
            firstLabel.topAnchor.constraint(equalTo: self.topAnchor),
            firstLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                constant: 16),
            firstLabel.heightAnchor.constraint(equalToConstant: 20),
            firstLabel.trailingAnchor.constraint(equalTo: firstLabel1.leadingAnchor,
                                                constant: -5)
        ])
        NSLayoutConstraint.activate([
            secondLabel.topAnchor.constraint(equalTo: firstLabel.bottomAnchor,
                                            constant: 10),
            secondLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                constant: 16),
            secondLabel.heightAnchor.constraint(equalToConstant: 50),
            secondLabel.trailingAnchor.constraint(equalTo: secondLabel1.leadingAnchor,
                                                constant: -5)
        ])
        NSLayoutConstraint.activate([
            fatsLabel.topAnchor.constraint(equalTo: secondLabel.bottomAnchor,
                                            constant: 10),
            fatsLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                constant: 16),
            fatsLabel.heightAnchor.constraint(equalToConstant: 20),
            fatsLabel.trailingAnchor.constraint(equalTo: fatsLabel1.leadingAnchor,
                                                constant: -5)
        ])
        NSLayoutConstraint.activate([
            thirdLabel.topAnchor.constraint(equalTo: fatsLabel.bottomAnchor,
                                            constant: 10),
            thirdLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                constant: 16),
            thirdLabel.heightAnchor.constraint(equalToConstant: 20),
            thirdLabel.trailingAnchor.constraint(equalTo: thirdLabel1.leadingAnchor,
                                                   constant: -5)
        ])
        NSLayoutConstraint.activate([
            fourthLabel.topAnchor.constraint(equalTo: thirdLabel.bottomAnchor,
                                            constant: 10),
            fourthLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                constant: 16),
            fourthLabel.heightAnchor.constraint(equalToConstant: 20),
            fourthLabel.trailingAnchor.constraint(equalTo: fourthLabel1.leadingAnchor,
                                                         constant: -5)
        ])
        NSLayoutConstraint.activate([
            fifthLabel.topAnchor.constraint(equalTo: fourthLabel.bottomAnchor,
                                            constant: 10),
            fifthLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                constant: 16),
            fifthLabel.heightAnchor.constraint(equalToConstant: 20),
            fifthLabel.trailingAnchor.constraint(equalTo: fifthLabel1.leadingAnchor,
                                                         constant: -5)
        ])
        NSLayoutConstraint.activate([
            sixthLabel.topAnchor.constraint(equalTo: fifthLabel.bottomAnchor,
                                            constant: 10),
            sixthLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                constant: 16),
            sixthLabel.heightAnchor.constraint(equalToConstant: 20),
            sixthLabel.trailingAnchor.constraint(equalTo: sixthLabel1.leadingAnchor,
                                                         constant: -5)
        ])
        NSLayoutConstraint.activate([
            seventhLabel.topAnchor.constraint(equalTo: sixthLabel.bottomAnchor,
                                            constant: 10),
            seventhLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                constant: 16),
            seventhLabel.heightAnchor.constraint(equalToConstant: 20),
            seventhLabel.trailingAnchor.constraint(equalTo: seventhLabel1.leadingAnchor,
                                                         constant: -5)
        ])
        
        
        

        
        NSLayoutConstraint.activate([
            firstLabel1.topAnchor.constraint(equalTo: self.topAnchor),
            firstLabel1.trailingAnchor.constraint(equalTo: self.trailingAnchor,
                                                constant: -16),
            firstLabel1.heightAnchor.constraint(lessThanOrEqualToConstant: 50),
            firstLabel1.widthAnchor.constraint(lessThanOrEqualToConstant: 50)
        ])
        NSLayoutConstraint.activate([
            secondLabel1.topAnchor.constraint(equalTo: firstLabel1.bottomAnchor,
                                            constant: 33),
            secondLabel1.trailingAnchor.constraint(equalTo: self.trailingAnchor,
                                                constant: -16),
            secondLabel1.heightAnchor.constraint(lessThanOrEqualToConstant: 50),
            secondLabel1.widthAnchor.constraint(lessThanOrEqualToConstant: 50)
        ])
        NSLayoutConstraint.activate([
            fatsLabel1.topAnchor.constraint(equalTo: secondLabel1.bottomAnchor,
                                            constant: 20),
            fatsLabel1.trailingAnchor.constraint(equalTo: self.trailingAnchor,
                                                constant: -16),
            fatsLabel1.heightAnchor.constraint(equalToConstant: 20),
            fatsLabel1.widthAnchor.constraint(lessThanOrEqualToConstant: 50)
        ])
        NSLayoutConstraint.activate([
            thirdLabel1.topAnchor.constraint(equalTo: fatsLabel1.bottomAnchor,
                                            constant: 10),
            thirdLabel1.trailingAnchor.constraint(equalTo: self.trailingAnchor,
                                                constant: -16),
            thirdLabel1.heightAnchor.constraint(equalToConstant: 20),
            thirdLabel1.widthAnchor.constraint(lessThanOrEqualToConstant: 50)
        ])
        NSLayoutConstraint.activate([
            fourthLabel1.topAnchor.constraint(equalTo: thirdLabel1.bottomAnchor,
                                            constant: 10),
            fourthLabel1.trailingAnchor.constraint(equalTo: self.trailingAnchor,
                                                constant: -16),
            fourthLabel1.heightAnchor.constraint(equalToConstant: 20),
            fourthLabel1.widthAnchor.constraint(lessThanOrEqualToConstant: 120)
        ])
        NSLayoutConstraint.activate([
            fifthLabel1.topAnchor.constraint(equalTo: fourthLabel1.bottomAnchor,
                                            constant: 10),
            fifthLabel1.trailingAnchor.constraint(equalTo: self.trailingAnchor,
                                                constant: -16),
            fifthLabel1.heightAnchor.constraint(equalToConstant: 20),
            fifthLabel1.widthAnchor.constraint(lessThanOrEqualToConstant: 120)
        ])
        NSLayoutConstraint.activate([
            sixthLabel1.topAnchor.constraint(equalTo: fifthLabel1.bottomAnchor,
                                            constant: 10),
            sixthLabel1.trailingAnchor.constraint(equalTo: self.trailingAnchor,
                                                constant: -16),
            sixthLabel1.heightAnchor.constraint(equalToConstant: 20),
            sixthLabel1.widthAnchor.constraint(lessThanOrEqualToConstant: 120)
        ])
        NSLayoutConstraint.activate([
            seventhLabel1.topAnchor.constraint(equalTo: sixthLabel1.bottomAnchor,
                                            constant: 10),
            seventhLabel1.trailingAnchor.constraint(equalTo: self.trailingAnchor,
                                                constant: -16),
            seventhLabel1.heightAnchor.constraint(equalToConstant: 20),
            seventhLabel1.widthAnchor.constraint(lessThanOrEqualToConstant: 120)
        ])
    }
}
