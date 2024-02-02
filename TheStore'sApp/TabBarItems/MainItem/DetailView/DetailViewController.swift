//
//  DetailViewController.swift
//  TheStore'sApp
//
//  Created by Vasiliy Vygnych on 01.02.2024.
//

import UIKit

class DetailViewController: UIViewController {

    var presenter: MainPresenterProtocol?
    
    private var contentSize: CGSize {
        CGSize(width: view.frame.width,
               height: view.frame.height)
    }
    
//MARK: - scrollView
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.alwaysBounceVertical = true
        scrollView.backgroundColor = .white
        scrollView.contentSize = contentSize
        return scrollView
    }()
//MARK: - UIView
    private var contentView: UIView = {
       let UIview = UIView()
        UIview.translatesAutoresizingMaskIntoConstraints = false
        UIview.backgroundColor = .white
        return UIview
    }()
    private var substrateView: UIView = {
       let UIview = UIView()
        UIview.translatesAutoresizingMaskIntoConstraints = false
        UIview.backgroundColor = .gray
        return UIview
    }()
//MARK: - custom views
    private var productCardView: ProductCardView = {
       let view = ProductCardView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    private var productDescriptionView: ProductDescriptionView = {
       let view = ProductDescriptionView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    private var feedbackView: FeedbackView = {
       let view = FeedbackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    private var addingProductView: AddingProductView = {
       let view = AddingProductView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
//MARK: - loadView
    override func loadView() {
        super.loadView()
        contentView.addSubview(productCardView)
        contentView.addSubview(substrateView)
        substrateView.addSubview(productDescriptionView)
        contentView.addSubview(feedbackView)
        contentView.addSubview(addingProductView)
        
        presenter?.viewDidLoad()
    }
//MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        view.backgroundColor = .white
        setupeConstrain()
        setupeBarButtonItem()
        setupeCustomeViews()
    }
//MARK: - setupeCustomeViews
    private func setupeCustomeViews() {
        feedbackView.presenter = presenter
        addingProductView.presenter = presenter
        productDescriptionView.presenter = presenter
    }
//MARK: - setupeButton
    private func setupeBarButtonItem() {
        let backButton = UIBarButtonItem(image: UIImage(systemName: "arrow.backward"),
                                         style: .plain,
                                         target: self, action: #selector(back))
        backButton.tintColor = .systemGreen
        let listButton = UIBarButtonItem(image: UIImage(systemName: "list.bullet.rectangle.portrait.fill"),
                                         style: .plain,
                                         target: self, action: #selector(list))
        listButton.tintColor = .systemGreen
        let shareButton = UIBarButtonItem(image: UIImage(systemName: "square.and.arrow.up"),
                                         style: .plain,
                                         target: self, action: #selector(share))
        shareButton.tintColor = .systemGreen
        let favoriteButton = UIBarButtonItem(image: UIImage(systemName: "suit.heart"),
                                         style: .plain,
                                         target: self, action: #selector(favorite))
        favoriteButton.tintColor = .systemGreen
        navigationItem.leftBarButtonItem = backButton
        navigationItem.rightBarButtonItems = [favoriteButton, shareButton, listButton]
    }
//MARK: - @objc funcs
    @objc func back() {
        print("back")
    }
    @objc func share() {
        print("share")
    }
    @objc func list() {
        print("list")
    }
    @objc func favorite(sender: UIBarButtonItem) {
        if sender.image == UIImage(systemName: "suit.heart") {
            sender.image = UIImage(systemName: "heart.fill")
            print("добавлено в избранное")
        } else {
            sender.image = UIImage(systemName: "suit.heart")
            print("удалено из избранного")
        }
    }
//MARK: - setupeConstrain
    private func setupeConstrain() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor)
        ])
        NSLayoutConstraint.activate([
            productCardView.topAnchor.constraint(equalTo: contentView.topAnchor),
            productCardView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            productCardView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            productCardView.heightAnchor.constraint(equalToConstant: 500)
        ])
        NSLayoutConstraint.activate([
            substrateView.topAnchor.constraint(equalTo: productCardView.bottomAnchor),
            substrateView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            substrateView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            substrateView.bottomAnchor.constraint(equalTo: feedbackView.topAnchor)
        ])
        NSLayoutConstraint.activate([
            productDescriptionView.topAnchor.constraint(equalTo: productCardView.bottomAnchor),
            
            productDescriptionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            productDescriptionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            productDescriptionView.bottomAnchor.constraint(equalTo: feedbackView.topAnchor)
        ])
        NSLayoutConstraint.activate([
            feedbackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            feedbackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            feedbackView.heightAnchor.constraint(equalToConstant: 360),
        ])
        NSLayoutConstraint.activate([
            addingProductView.topAnchor.constraint(equalTo: feedbackView.bottomAnchor),
            addingProductView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            addingProductView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            addingProductView.heightAnchor.constraint(equalToConstant: 150),
            addingProductView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}
//MARK: - extension MenuViewProtocol
extension DetailViewController: MainViewProtocol {
    func dataSet(model: [SelfModel]) {
        feedbackView.model = model
        
    }
}
