//
//  FeedbackView.swift
//  TheStore'sApp
//
//  Created by Vasiliy Vygnych on 01.02.2024.
//

import UIKit

class FeedbackView: UIView {
    
    var presenter: MainPresenterProtocol?
    
    var model: [SelfModel]? {
        didSet {
            collectionView.reloadData()
        }
    }
    
//MARK: - UILabel
    private var titleLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 24,
                                 weight: .semibold)
        label.textColor = .black
        label.text = "Отзывы"
        return label
    }()
//MARK: - UIButton
    private var button: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Все 5",
                        for: .normal)
        button.setTitleColor(.systemGreen,
                             for: .normal)
        return button
    }()
    private var addReviewButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Оставить отзыв",
                        for: .normal)
        button.setTitleColor(.systemGreen,
                             for: .normal)
        button.layer.cornerRadius = 20
        button.layer.borderWidth = 3
        button.layer.borderColor = UIColor.systemGreen.cgColor
        return button
    }()
//MARK: - layout & collectionView
    private lazy var layout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = .init(width: 260,
                                height: 200)
        layout.minimumLineSpacing = 20
        layout.sectionInset = .init(top: 0,
                                    left: 10,
                                    bottom: 0,
                                    right: 10)
        return layout
    }()
    private lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero,
                                              collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.contentMode = .scaleAspectFill
        return collectionView
    }()
//MARK: - init
    init() {
        super.init(frame: .zero)
        setupeСollectionView()
        setupeView()
        setupeConstraint()
        setupeButton()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
private extension FeedbackView {
//MARK: - setupeButton
    func setupeButton() {
        button.addTarget(self,
                         action: #selector(allReviews),
                         for: .touchUpInside)
        addReviewButton.addTarget(self,
                         action: #selector(addReview),
                         for: .touchUpInside)
    }
    @objc func allReviews() {
        print("allReviews")
        presenter?.clickAnimation(button: button)
    }
    @objc func addReview() {
        print("addReview")
        presenter?.clickAnimation(button: addReviewButton)
    }
//MARK: - setupeView
    func setupeView() {
        self.addSubview(titleLabel)
        self.addSubview(button)
        self.addSubview(addReviewButton)
    }
//MARK: - setupeСollectionView
     func setupeСollectionView() {
         self.addSubview(collectionView)
         collectionView.dataSource = self
         collectionView.delegate = self
         collectionView.register(ViewCollectionCell.self,
                                 forCellWithReuseIdentifier: "cell")
    }
//MARK: - setupeConstraint
    func setupeConstraint() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor,
                                            constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                constant: 16),
            titleLabel.heightAnchor.constraint(equalToConstant: 50),
            titleLabel.widthAnchor.constraint(equalToConstant: 200)
        ])
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: self.topAnchor,
                                        constant: 10),
            button.trailingAnchor.constraint(equalTo: self.trailingAnchor,
                                             constant: -16),
            button.heightAnchor.constraint(equalToConstant: 50),
            button.widthAnchor.constraint(equalToConstant: 100)
        ])
        NSLayoutConstraint.activate([
            addReviewButton.topAnchor.constraint(equalTo: collectionView.bottomAnchor,
                                                 constant: 20),
            addReviewButton.trailingAnchor.constraint(equalTo: self.trailingAnchor,
                                                      constant: -16),
            addReviewButton.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                     constant: 16),
            addReviewButton.heightAnchor.constraint(equalToConstant: 40),
        ])
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                    constant: 16),
            collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor,
                                                     constant: -16),
            collectionView.heightAnchor.constraint(equalToConstant: 220),
        ])
    }
}
//MARK: - CollectionViewDataSource
extension FeedbackView: UICollectionViewDataSource,
                                UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        model?.count ?? 0
    }
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell",
                                                      for: indexPath) as! ViewCollectionCell
        let model = model?[indexPath.item]
        cell.configure(model: model)
        return cell
    }
//MARK: - didSelectItemAt
    func collectionView(_ collectionView: UICollectionView,
                        didSelectItemAt indexPath: IndexPath) {
        let collectionView = self.collectionView.cellForItem(at: indexPath) as? ViewCollectionCell
            UIView.animate(withDuration: 0.4,
                         delay: 0,
                         options: .curveEaseOut,
                         animations: {
            collectionView?.transform = CGAffineTransform(scaleX: 0.75,
                                                          y: 0.75)
        }, completion: { finished in
            print("tap cell")
        })
            UIView.animate(withDuration: 0.4,
                           delay: 0,
                           options: .curveEaseOut,
                           animations: {
            collectionView?.transform = CGAffineTransform(scaleX: 1,
                                                          y: 1)
        }, completion: nil)
    }
}

