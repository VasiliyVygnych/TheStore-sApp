//
//  ProductDescriptionView.swift
//  TheStore'sApp
//
//  Created by Vasiliy Vygnych on 01.02.2024.
//

import UIKit

class ProductDescriptionView: UIView {
    
    var presenter: MainPresenterProtocol?
    
    private var newView: [UIView] = []
    
//MARK: - UILabel
    private var titleLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16,
                                 weight: .bold)
        label.textColor = .black
        label.text = "Описание"
        return label
    }()
    private var descriptionTitleLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .regular)
        label.textColor = .black
        label.numberOfLines = 0
        label.text = "В гречке содержится много витаминов и полезных минералов: В1, В2, В6, фолиевая кислота, кальций, магний, железо, калий. К положительным свойствам относится и то, что эта крупа понижает уровень холестерина в крови, чистит печень от токсинов, обеспечивает правильную работу кишечника, улучшает процесс кроветворения и, как ни странно, борется с бессонницей"
        return label
    }()
    private var specificationsleLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16,
                                 weight: .bold)
        label.textColor = .black
        label.text = "Основные характеристики"
        return label
    }() 
//MARK: - UIStackView
    private var stack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        return stack
    }()
//MARK: - UIView
    private var buttonView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
//MARK: - UIButton
    private var showButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Все характеристики",
                        for: .normal)
        button.setTitleColor(.systemGreen,
                             for: .normal)
        return button
    }()
    private var hideButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Скрыть",
                        for: .normal)
        button.setTitleColor(.systemGreen,
                             for: .normal)
        return button
    }()
//MARK: - custom Views
    private var productFeaturesView: ProductFeaturesView = {
       let view = ProductFeaturesView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    private var allProductFeaturesView: AllProductFeaturesView = {
       let view = AllProductFeaturesView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
//MARK: - init
    init() {
        super.init(frame: .zero)
        setupeView()
        setupeConstraint()
        setupeButton()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
private extension ProductDescriptionView {
//MARK: - setupeButton
    func setupeButton() {
        showButton.addTarget(self,
                             action: #selector(characteristics),
                             for: .touchUpInside)
        hideButton.addTarget(self,
                             action: #selector(characteristics),
                             for: .touchUpInside)
    }
    @objc func characteristics() {
        presenter?.clickAnimation(button: showButton)
        presenter?.clickAnimation(button: hideButton)
        newView.forEach { buttom in
            UIView.animate(withDuration: 0.1) {
                buttom.isHidden = !buttom.isHidden
                self.layoutIfNeeded()
            }
        }
    }
//MARK: - setupeView
    func setupeView() {
        self.addSubview(titleLabel)
        self.addSubview(descriptionTitleLabel)
        self.addSubview(specificationsleLabel)
        self.addSubview(stack)
        self.addSubview(productFeaturesView)
        stack.addArrangedSubview(buttonView)
        buttonView.addSubview(showButton)
        stack.addArrangedSubview(allProductFeaturesView)
        allProductFeaturesView.addSubview(hideButton)
        allProductFeaturesView.isHidden = true
        newView.append(allProductFeaturesView)
    }
//MARK: - setupeConstraint
    func setupeConstraint() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor,
                                            constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                constant: 16),
            titleLabel.heightAnchor.constraint(equalToConstant: 30),
            titleLabel.widthAnchor.constraint(equalToConstant: 100)
        ])
        NSLayoutConstraint.activate([
            descriptionTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,
                                            constant: 10),
            descriptionTitleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                constant: 16),
            descriptionTitleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor,
                                                constant: -16),
            descriptionTitleLabel.heightAnchor.constraint(lessThanOrEqualTo: self.heightAnchor,
                                                          multiplier: 100)
        ])
        NSLayoutConstraint.activate([
            specificationsleLabel.topAnchor.constraint(equalTo: descriptionTitleLabel.bottomAnchor,
                                                       constant: 10),
            specificationsleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                constant: 16),
            specificationsleLabel.heightAnchor.constraint(equalToConstant: 30),
            specificationsleLabel.widthAnchor.constraint(equalToConstant: 300)
        ])
        NSLayoutConstraint.activate([
            productFeaturesView.topAnchor.constraint(equalTo: specificationsleLabel.bottomAnchor,
                                                     constant: 10),
            productFeaturesView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            productFeaturesView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            productFeaturesView.heightAnchor.constraint(equalToConstant: 170)
        ])
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: productFeaturesView.bottomAnchor),
            stack.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            stack.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
            stack.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
        NSLayoutConstraint.activate([
            buttonView.heightAnchor.constraint(equalToConstant: 50),
        ])
        NSLayoutConstraint.activate([
            showButton.widthAnchor.constraint(equalToConstant: 175),
            showButton.heightAnchor.constraint(equalToConstant: 50),
            showButton.leadingAnchor.constraint(equalTo: buttonView.leadingAnchor,
                                            constant: 16),
            showButton.bottomAnchor.constraint(equalTo: buttonView.bottomAnchor)
       ])
        NSLayoutConstraint.activate([
            allProductFeaturesView.topAnchor.constraint(equalTo: buttonView.bottomAnchor),
            allProductFeaturesView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            allProductFeaturesView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            allProductFeaturesView.heightAnchor.constraint(equalToConstant: 320),
        ])
        NSLayoutConstraint.activate([
            hideButton.widthAnchor.constraint(equalToConstant: 70),
            hideButton.heightAnchor.constraint(equalToConstant: 50),
            hideButton.leadingAnchor.constraint(equalTo: buttonView.leadingAnchor,
                                            constant: 16),
            hideButton.bottomAnchor.constraint(equalTo: allProductFeaturesView.bottomAnchor)
       ])
    }
}
