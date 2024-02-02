//
//  AddingProductView.swift
//  TheStore'sApp
//
//  Created by Vasiliy Vygnych on 01.02.2024.
//

import UIKit

class AddingProductView: UIView {
    
    var presenter: MainPresenterProtocol?
    var count = 1
    var value = "Шт"
    var price = 179
    
//MARK: - UISegmentedControl
    private lazy var segmentController: UISegmentedControl = {
        let segment = UISegmentedControl()
        segment.translatesAutoresizingMaskIntoConstraints = false
        segment.layer.cornerRadius = 15
        segment.insertSegment(withTitle: "Шт",
                              at: 0, animated: true)
        segment.insertSegment(withTitle: "Кг",
                              at: 1, animated: true)
        segment.selectedSegmentIndex = 0
        return segment
    }()
//MARK: - UILabel
    private var priceBefore: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .bold)
        label.textColor = .lightGray
        label.attributedText = "199.0".strikethroughText()
        return label
    }()
    private var priceAfter: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 30,
                                 weight: .bold)
        label.textColor = .black
        label.text = "179.0"
        return label
    }()
    private var countLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .bold)
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    private var priceLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .light)
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
//MARK: - UIButton
    private var purchaseButton: UIButton = {
       let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGreen
        view.layer.cornerRadius = 25
        return view
    }()
    private var minusButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setBackgroundImage(UIImage(systemName: "minus"), for: .normal)
        button.tintColor = .white
        return button
    }()
    private var plusButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setBackgroundImage(UIImage(systemName: "plus"), for: .normal)
        button.tintColor = .white
        return button
    }()
//MARK: - init
    init() {
        super.init(frame: .zero)
        setupeView()
        setupeConstraint()
        setupeButton()
        
        countLabel.text = "\(count) \(value)"
        priceLabel.text = String(price)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
private extension AddingProductView {
//MARK: - setupeButton
    func setupeButton() {
        minusButton.addTarget(self,
                         action: #selector(minus),
                         for: .touchUpInside)
        plusButton.addTarget(self,
                         action: #selector(plus),
                         for: .touchUpInside)
        segmentController.addTarget(self,
                                    action: #selector(selectSegment),
                                    for: .valueChanged)
        purchaseButton.addTarget(self,
                         action: #selector(addToCart),
                         for: .touchUpInside)
    }
//MARK: - @objc funcs
    @objc func minus() {
        presenter?.clickAnimation(button: minusButton)
        price -= 179
        priceLabel.text = String(price)
        count -= 1
        countLabel.text = "\(count) \(value)"
        if count <= 1 {
            minusButton.isUserInteractionEnabled = false
        }
    }
    @objc func plus() {
        presenter?.clickAnimation(button: plusButton)
        price += 179
        priceLabel.text = String(price)
        count += 1
        countLabel.text = "\(count) \(value)"
        if count > 1 {
            minusButton.isUserInteractionEnabled = true
        }
    }
    @objc func selectSegment(segment: UISegmentedControl) {
        guard let value = segment.titleForSegment(at: segment.selectedSegmentIndex) else {
            return }
        switch segment.selectedSegmentIndex {
        case 0:
            countLabel.text = "\(count) \(value)"
            self.value = value
        case 1:
            countLabel.text = "\(count) \(value)"
            self.value = value
        default:
            break
        }
    }
    @objc func addToCart() {
        print("товар добавлен в корзину")
        presenter?.clickAnimation(button: purchaseButton)
    }
//MARK: - setupeView
    func setupeView() {
        self.addSubview(segmentController)
        self.addSubview(priceAfter)
        self.addSubview(priceBefore)
        self.addSubview(purchaseButton)
        purchaseButton.addSubview(minusButton)
        purchaseButton.addSubview(plusButton)
        purchaseButton.addSubview(countLabel)
        purchaseButton.addSubview(priceLabel)
    }
//MARK: - setupeConstraint
    func setupeConstraint() {
        NSLayoutConstraint.activate([
            segmentController.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            segmentController.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                       constant: 16),
            segmentController.trailingAnchor.constraint(equalTo: self.trailingAnchor,
                                                       constant: -16),
            segmentController.heightAnchor.constraint(equalToConstant: 35),
            
        ])
        NSLayoutConstraint.activate([
            priceAfter.topAnchor.constraint(equalTo: segmentController.bottomAnchor,
                                            constant: 25),
            priceAfter.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                constant: 16),
            priceAfter.heightAnchor.constraint(equalToConstant: 35),
            priceAfter.widthAnchor.constraint(equalToConstant: 100)
        ])
        NSLayoutConstraint.activate([
            priceBefore.topAnchor.constraint(equalTo: priceAfter.bottomAnchor),
            priceBefore.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                constant: 16),
            priceBefore.heightAnchor.constraint(equalToConstant: 20),
            priceBefore.widthAnchor.constraint(equalToConstant: 100)
        ])
        NSLayoutConstraint.activate([
            purchaseButton.topAnchor.constraint(equalTo: segmentController.bottomAnchor,
                                              constant: 25),
            purchaseButton.trailingAnchor.constraint(equalTo: self.trailingAnchor,
                                             constant: -16),
            purchaseButton.heightAnchor.constraint(equalToConstant: 50),
            purchaseButton.widthAnchor.constraint(equalToConstant: 180)
        ])
        NSLayoutConstraint.activate([
            minusButton.centerYAnchor.constraint(equalTo: purchaseButton.centerYAnchor),
            minusButton.leadingAnchor.constraint(equalTo: purchaseButton.leadingAnchor,
                                             constant: 16),
            minusButton.heightAnchor.constraint(equalToConstant: 22),
            minusButton.widthAnchor.constraint(equalToConstant: 30)
        ])
        NSLayoutConstraint.activate([
            plusButton.centerYAnchor.constraint(equalTo: purchaseButton.centerYAnchor),
            plusButton.trailingAnchor.constraint(equalTo: purchaseButton.trailingAnchor,
                                                 constant: -16),
            plusButton.heightAnchor.constraint(equalToConstant: 30),
            plusButton.widthAnchor.constraint(equalToConstant: 30)
        ])
        NSLayoutConstraint.activate([
            countLabel.topAnchor.constraint(equalTo: purchaseButton.topAnchor, constant: 8),
            countLabel.centerXAnchor.constraint(equalTo: purchaseButton.centerXAnchor),
            countLabel.heightAnchor.constraint(equalToConstant: 18),
            countLabel.widthAnchor.constraint(equalToConstant: 100)
        ])
        NSLayoutConstraint.activate([
            priceLabel.topAnchor.constraint(equalTo: countLabel.bottomAnchor),
            priceLabel.centerXAnchor.constraint(equalTo: purchaseButton.centerXAnchor),
            priceLabel.heightAnchor.constraint(equalToConstant: 18),
            priceLabel.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
}
