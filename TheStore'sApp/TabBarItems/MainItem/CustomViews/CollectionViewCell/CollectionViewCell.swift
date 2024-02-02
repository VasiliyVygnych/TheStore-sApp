//
//  CollectionViewCell.swift
//  TheStore'sApp
//
//  Created by Vasiliy Vygnych  on 01.02.2024.
//

import UIKit

class ViewCollectionCell: UICollectionViewCell {
    
//MARK: - label
    private var nameLabel: UILabel = {
      let label = UILabel()
       label.translatesAutoresizingMaskIntoConstraints = false
       label.font = .systemFont(ofSize: 14,
                                weight: .semibold)
       label.textColor = .black
       return label
   }()
   private var dateLabel: UILabel = {
      let label = UILabel()
       label.translatesAutoresizingMaskIntoConstraints = false
       label.font = .systemFont(ofSize: 14,
                                weight: .medium)
       label.textColor = .lightGray
       return label
   }()
   private var titleLabel: UILabel = {
      let label = UILabel()
       label.translatesAutoresizingMaskIntoConstraints = false
       label.font = .systemFont(ofSize: 14,
                                weight: .medium)
       label.textColor = .gray
       label.numberOfLines = 0
       return label
   }()
//MARK: - UIView
    private var ratingView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
//MARK: - UIImageView
    private var ratingImage: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.image = UIImage(systemName: "star.fill")
        image.tintColor = .systemYellow
        return image
    }()
    private var ratingImage2: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.image = UIImage(systemName: "star.fill")
        image.tintColor = .systemYellow
        return image
    }()
    private var ratingImage3: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.image = UIImage(systemName: "star.fill")
        image.tintColor = .systemYellow
        return image
    }()
    private var ratingImage4: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.image = UIImage(systemName: "star.fill")
        image.tintColor = .systemYellow
        return image
    }()
    private var ratingImage5: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.image = UIImage(systemName: "star.fill")
        image.tintColor = .lightGray
        return image
    }()
//MARK: - init
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialization()
        setupeConstraint()
        self.backgroundColor = .white
        self.layer.cornerRadius = 15
        self.layer.shadowOpacity = 0.2
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 1,
                                           height: 1)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
//MARK: - configure
    func configure(model: SelfModel?) {
        nameLabel.text = model?.name
        dateLabel.text = model?.data
        titleLabel.text = model?.Title
    }
}
//MARK: - extension
private extension ViewCollectionCell {
    func initialization() {
        contentView.addSubview(nameLabel)
        contentView.addSubview(dateLabel)
        contentView.addSubview(titleLabel)
        
        contentView.addSubview(ratingView)
        ratingView.addSubview(ratingImage)
        ratingView.addSubview(ratingImage2)
        ratingView.addSubview(ratingImage3)
        ratingView.addSubview(ratingImage4)
        ratingView.addSubview(ratingImage5)
    }
//MARK: - setupeConstraint
    private func setupeConstraint() {
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,
                                               constant: 10),
            nameLabel.heightAnchor.constraint(equalToConstant: 20),
            nameLabel.widthAnchor.constraint(equalToConstant: 200)
        ])
        NSLayoutConstraint.activate([
            dateLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor),
            dateLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,
                                               constant: 10),
            dateLabel.heightAnchor.constraint(equalToConstant: 25),
            dateLabel.widthAnchor.constraint(equalToConstant: 180)
        ])
        NSLayoutConstraint.activate([
            ratingView.topAnchor.constraint(equalTo: dateLabel.bottomAnchor),
            ratingView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,
                                               constant: 10),
            ratingView.heightAnchor.constraint(equalToConstant: 20),
            ratingView.widthAnchor.constraint(equalToConstant: 130)
        ])
        
        
        NSLayoutConstraint.activate([
            ratingImage.topAnchor.constraint(equalTo: dateLabel.bottomAnchor),
            ratingImage.leadingAnchor.constraint(equalTo: ratingView.leadingAnchor),
            ratingImage.heightAnchor.constraint(equalToConstant: 20),
            ratingImage.widthAnchor.constraint(equalToConstant: 20)
        ])
        NSLayoutConstraint.activate([
            ratingImage2.topAnchor.constraint(equalTo: dateLabel.bottomAnchor),
            ratingImage2.leadingAnchor.constraint(equalTo: ratingImage.trailingAnchor,
                                                  constant: 5),
            ratingImage2.heightAnchor.constraint(equalToConstant: 20),
            ratingImage2.widthAnchor.constraint(equalToConstant: 20)
        ])
        NSLayoutConstraint.activate([
            ratingImage3.topAnchor.constraint(equalTo: dateLabel.bottomAnchor),
            ratingImage3.leadingAnchor.constraint(equalTo: ratingImage2.trailingAnchor,
                                                  constant: 5),
            ratingImage3.heightAnchor.constraint(equalToConstant: 20),
            ratingImage3.widthAnchor.constraint(equalToConstant: 20)
        ])
        NSLayoutConstraint.activate([
            ratingImage4.topAnchor.constraint(equalTo: dateLabel.bottomAnchor),
            ratingImage4.leadingAnchor.constraint(equalTo: ratingImage3.trailingAnchor,
                                                  constant: 5),
            ratingImage4.heightAnchor.constraint(equalToConstant: 20),
            ratingImage4.widthAnchor.constraint(equalToConstant: 20)
        ])
        NSLayoutConstraint.activate([
            ratingImage5.topAnchor.constraint(equalTo: dateLabel.bottomAnchor),
            ratingImage5.leadingAnchor.constraint(equalTo: ratingImage4.trailingAnchor,
                                                  constant: 5),
            ratingImage5.heightAnchor.constraint(equalToConstant: 20),
            ratingImage5.widthAnchor.constraint(equalToConstant: 20)
        ])
        
        
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: ratingImage.bottomAnchor,
                                            constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,
                                               constant: 10),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,
                                               constant: -10),
            titleLabel.heightAnchor.constraint(lessThanOrEqualToConstant: 106),
        ])
    }
}
