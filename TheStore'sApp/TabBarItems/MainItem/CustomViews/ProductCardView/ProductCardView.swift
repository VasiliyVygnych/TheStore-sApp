//
//  ProductCardView.swift
//  TheStore'sApp
//
//  Created by Vasiliy Vygnych on 01.02.2024.
//

import UIKit

class ProductCardView: UIView {
    
//MARK: - UILabel
    private var infoLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 14,
                                 weight: .regular)
        label.textColor = .white
        label.backgroundColor = .systemGreen
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
        label.textAlignment = .center
        label.text = "Цена по карте"
        return label
    }()
    private var ratingLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16,
                                 weight: .bold)
        label.textColor = .black
        label.text = "4.9"
        return label
    }()
    private var nameLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 30,
                                 weight: .bold)
        label.textColor = .black
        label.numberOfLines = 0
        label.text = "Гречка, особая, шлифованная."
        return label
    }()
    private var countryLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16,
                                 weight: .regular)
        label.textColor = .black
        label.text = "italia"
        return label
    }()
//MARK: - UIImageView
    private var previewImage: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.image = UIImage(named: "grecha")
        return image
    }()
    private var ratingImage: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.image = UIImage(systemName: "star.fill")
        image.tintColor = .systemYellow
        return image
    }()
    private var bannerImage: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.image = UIImage(named: "sale")
        return image
    }()
    private var countryImage: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.image = UIImage(named: "italian")
        image.layer.cornerRadius = 13
        image.clipsToBounds = true
        return image
    }()
//MARK: - UIButton
    private var showReviewsButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("| 19 отзывов",
                        for: .normal)
        button.setTitleColor(.lightGray,
                             for: .normal)
        return button
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
private extension ProductCardView {
//MARK: - setupeView
    func setupeView() {
        self.addSubview(infoLabel)
        self.addSubview(previewImage)
        self.addSubview(ratingImage)
        self.addSubview(ratingLabel)
        self.addSubview(showReviewsButton)
        self.addSubview(bannerImage)
        self.addSubview(nameLabel)
        self.addSubview(countryImage)
        self.addSubview(countryLabel)
    }
//MARK: - setupeConstraint
    func setupeConstraint() {
        NSLayoutConstraint.activate([
            infoLabel.topAnchor.constraint(equalTo: self.topAnchor,
                                            constant: 5),
            infoLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                constant: 16),
            infoLabel.heightAnchor.constraint(equalToConstant: 30),
            infoLabel.widthAnchor.constraint(equalToConstant: 110)
        ])
        NSLayoutConstraint.activate([
            previewImage.topAnchor.constraint(equalTo: self.topAnchor,
                                            constant: 40),
            previewImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            previewImage.heightAnchor.constraint(equalToConstant: 300),
            previewImage.widthAnchor.constraint(equalToConstant: 250)
        ])
        NSLayoutConstraint.activate([
            ratingImage.topAnchor.constraint(equalTo: previewImage.bottomAnchor,
                                            constant: 10),
            ratingImage.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                 constant: 16),
            ratingImage.heightAnchor.constraint(equalToConstant: 25),
            ratingImage.widthAnchor.constraint(equalToConstant: 25)
        ])
        NSLayoutConstraint.activate([
            ratingLabel.topAnchor.constraint(equalTo: previewImage.bottomAnchor,
                                            constant: 10),
            ratingLabel.leadingAnchor.constraint(equalTo: ratingImage.trailingAnchor,
                                                 constant: 5),
            ratingLabel.heightAnchor.constraint(equalToConstant: 25),
            ratingLabel.widthAnchor.constraint(equalToConstant: 28)
        ])
        NSLayoutConstraint.activate([
            showReviewsButton.topAnchor.constraint(equalTo: previewImage.bottomAnchor,
                                            constant: 10),
            showReviewsButton.leadingAnchor.constraint(equalTo: ratingLabel.trailingAnchor,
                                                       constant: 3),
            showReviewsButton.heightAnchor.constraint(equalToConstant: 25),
            showReviewsButton.widthAnchor.constraint(lessThanOrEqualToConstant: 120)
        ])
        NSLayoutConstraint.activate([
            bannerImage.topAnchor.constraint(equalTo: previewImage.bottomAnchor,
                                            constant: 10),
            bannerImage.trailingAnchor.constraint(equalTo: self.trailingAnchor,
                                                 constant: -16),
            bannerImage.heightAnchor.constraint(equalToConstant: 25),
            bannerImage.widthAnchor.constraint(equalToConstant: 65)
        ])
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: ratingLabel.bottomAnchor,
                                            constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                constant: 16),
            nameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor,
                                                 constant: -16),
            nameLabel.heightAnchor.constraint(lessThanOrEqualTo: self.heightAnchor,
                                              multiplier: 100)
        ])
        NSLayoutConstraint.activate([
            countryImage.topAnchor.constraint(equalTo: nameLabel.bottomAnchor,
                                            constant: 10),
            countryImage.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                 constant: 16),
            countryImage.heightAnchor.constraint(equalToConstant: 25),
            countryImage.widthAnchor.constraint(equalToConstant: 25)
        ])
        NSLayoutConstraint.activate([
            countryLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor,
                                            constant: 10),
            countryLabel.leadingAnchor.constraint(equalTo: countryImage.trailingAnchor,
                                                 constant: 5),
            countryLabel.heightAnchor.constraint(equalToConstant: 25),
            countryLabel.widthAnchor.constraint(equalToConstant: 120)
        ])
    }
}
