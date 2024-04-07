//
//  ViewController.swift
//  SubwayKiosk
//
//  Created by CaliaPark on 4/1/24.
//

import UIKit

class ViewController: UIViewController {
    let breadList: [String] = ["플랫브레드", "허니오트", "하티", "파마산오레가노", "화이트", "위트"]
    let cheezeList: [String] = ["슈레드치즈", "아메리칸치즈", "모짜렐라치즈"]
    let vegiList: [String] = ["양상추", "토마토", "오이", "피클", "올리브", "양파"]
    let sauceList: [String] = ["랜치", "마요네즈", "머스타드", "홀스래디쉬", "핫칠리", "올리브오일"]
    let menuList: [String] = ["에그마요", "폴드포크", "쉬림프", "이탈리안비엘티", "스파이시이탈리안비엘티", "k바베큐", "스테이크앤치즈"]
    
    var order: Order = Order(menu: .eggmayo)
    var orderList: [Order] = []
    var totalValue: Int = 0
    var stepperValues: [Int] = []
    
    
    // MARK: - UIComoponent
    //top view
    lazy var topView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.clear
        return view
    }()
    
    lazy var titleView: UIView = {
        let view = UIView()
        view.backgroundColor = .subGreen
        return view
    }()
    
    lazy var titleText: UILabel = {
        let label = UILabel()
        let text = "SubEight"
        let attributeString = NSMutableAttributedString(string: text)
        attributeString.addAttribute(.foregroundColor, value: UIColor.subYellow, range: (text as NSString).range(of: "Sub"))
        attributeString.addAttribute(.foregroundColor, value: UIColor.white, range: (text as NSString).range(of: "Eight"))
        label.attributedText = attributeString
        label.font = UIFont.systemFont(ofSize: 35.0, weight: .black)
        label.clipsToBounds = true
        return label
    }()
    
    lazy var tabbarTop: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: topCollectionViewFlowLayout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    let topCollectionViewFlowLayout: UICollectionViewFlowLayout = {
        let flowlayout = UICollectionViewFlowLayout()
        flowlayout.scrollDirection = .horizontal
        flowlayout.minimumLineSpacing = 15
        flowlayout.sectionInset = UIEdgeInsets(top:0, left:0, bottom: 0, right: 0)
        return flowlayout
    }()
    
    // middle view
    let collectionViewFlowLayout: UICollectionViewFlowLayout = {
        let flowlayout = UICollectionViewFlowLayout()
        flowlayout.scrollDirection = .horizontal
        flowlayout.minimumLineSpacing = 15
        flowlayout.sectionInset = UIEdgeInsets(top:0, left:0, bottom: 0, right: 0)
        return flowlayout
    }()
    
    let collectionViewFlowLayout2: UICollectionViewFlowLayout = {
        let flowlayout = UICollectionViewFlowLayout()
        flowlayout.scrollDirection = .horizontal
        flowlayout.minimumLineSpacing = 15
        flowlayout.sectionInset = UIEdgeInsets(top:0, left:0, bottom: 0, right: 0)
        return flowlayout
    }()
    
    let collectionViewFlowLayout3: UICollectionViewFlowLayout = {
        let flowlayout = UICollectionViewFlowLayout()
        flowlayout.scrollDirection = .horizontal
        flowlayout.minimumLineSpacing = 15
        flowlayout.sectionInset = UIEdgeInsets(top:0, left:0, bottom: 0, right: 0)
        return flowlayout
    }()
    
    let collectionViewFlowLayout4: UICollectionViewFlowLayout = {
        let flowlayout = UICollectionViewFlowLayout()
        flowlayout.scrollDirection = .horizontal
        flowlayout.minimumLineSpacing = 15
        flowlayout.sectionInset = UIEdgeInsets(top:0, left:0, bottom: 0, right: 0)
        return flowlayout
    }()
    
    lazy var breadHorizontalBar: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewFlowLayout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
        
    lazy var cheezeHorizontalBar: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewFlowLayout2)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    lazy var vegiHorizontalBar: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewFlowLayout3)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    lazy var sauceHorizontalBar: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewFlowLayout4)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    lazy var oButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("O", for: .normal)
        btn.backgroundColor = .clear
        btn.setTitleColor(.darkGray, for: .normal)
        btn.layer.cornerRadius = 15
        btn.addTarget(self, action: #selector(oxButtonTapped), for: .touchUpInside)
        //btn.addTarget(self, action: #selector(oxButtonTapped), for: .touchUpInside)
        return btn
    }()
    
    lazy var xButton: UIButton = {
        let btn2 = UIButton()
        btn2.setTitle("X", for: .normal)
        btn2.backgroundColor = .clear
        btn2.setTitleColor(.darkGray, for: .normal)
        btn2.layer.cornerRadius = 15
        btn2.addTarget(self, action: #selector(oxButtonTapped), for: .touchUpInside)
        return btn2
    }()
    
    lazy var _15Button: UIButton = {
        let btn = UIButton()
        btn.setTitle("15cm", for: .normal)
        btn.backgroundColor = .clear
        btn.setTitleColor(.darkGray, for: .normal)
        btn.layer.cornerRadius = 15
        btn.addTarget(self, action: #selector(cmButtonTapped), for: .touchUpInside)
        return btn
    }()
    
    lazy var _30Button: UIButton = {
        let btn2 = UIButton()
        btn2.setTitle("30cm", for: .normal)
        btn2.backgroundColor = .clear
        btn2.setTitleColor(.darkGray, for: .normal)
        btn2.layer.cornerRadius = 15
        btn2.addTarget(self, action: #selector(cmButtonTapped), for: .touchUpInside)
        return btn2
    }()
    
    lazy var chooseStackView: UIStackView = {
        let stview = UIStackView(arrangedSubviews: [_15Button, _30Button])
        stview.spacing = 0
        stview.axis = .horizontal
        stview.distribution = .fillEqually
        stview.alignment = .fill
        return stview
    }()
    
    lazy var OXStackView: UIStackView = {
        let stview = UIStackView(arrangedSubviews: [oButton, xButton])
        stview.spacing = 0
        stview.axis = .horizontal
        stview.distribution = .fillEqually
        stview.alignment = .fill
        return stview
    }()
    
    //bottom view
    lazy var bottomView: UIView = {
        let view = UIView()
        view.backgroundColor = .subGreen
        [tableView, buttonStackView, totalView].forEach { view.addSubview($0) }
        return view
    }()
    
    let initButton: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = .lightGray
        button.setTitle("취소하기", for: .normal)
        button.layer.cornerRadius = 10
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)

        button.addTarget(self, action: #selector(initButtonTapped), for: .touchUpInside)
        return button
    }()
    
    let payButton: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = .subYellow
        button.layer.cornerRadius = 10
        button.setTitle("결제하기", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button.addTarget(self, action: #selector(payButtonTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var buttonStackView: UIStackView = {
        let stview = UIStackView(arrangedSubviews: [initButton, payButton])
        stview.spacing = 10
        stview.axis = .horizontal
        stview.distribution = .fillEqually
        stview.alignment = .fill
        return stview
    }()
    
    let totalCountLabel: UILabel = {
        let label = UILabel()
        label.text = "0개"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        return label
    }()
    
    let totalLabel: UILabel = {
        let label = UILabel()
        label.text = "총 주문 가격"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.textAlignment = .center
        return label
    }()
    
    let totalPriceLabel: UILabel = {
        let label = UILabel()
        label.text = "0원"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.textAlignment = .right
        return label
    }()
    
    lazy var totalStackView: UIView = {
        let stview = UIStackView(arrangedSubviews: [totalCountLabel, totalLabel, totalPriceLabel])
        stview.axis = .horizontal
        stview.distribution = .fillEqually
        stview.alignment = .fill
        return stview
    }()
    
    lazy var totalView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.addSubview(totalStackView)
        return view
    }()
    
    let tableView = UITableView()
    
    // MARK: - Function
    
    func setTopUI () {
        view.addSubview(topView)
        topView.addSubview(titleView)
        titleView.addSubview(titleText)
        
        view.addSubview(tabbarTop)
        tabbarTop.delegate = self
        tabbarTop.dataSource = self
        tabbarTop.register(TabbarTopCollectionViewCell.self, forCellWithReuseIdentifier: "TabbarTopCollectionViewCell")
        
        topView.translatesAutoresizingMaskIntoConstraints = false
        titleView.translatesAutoresizingMaskIntoConstraints = false
        titleText.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: view.topAnchor),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topView.heightAnchor.constraint(equalToConstant: 180)
        ])
        
        NSLayoutConstraint.activate([
            titleView.topAnchor.constraint(equalTo: topView.topAnchor),
            titleView.leadingAnchor.constraint(equalTo: topView.leadingAnchor),
            titleView.trailingAnchor.constraint(equalTo: topView.trailingAnchor),
            titleView.heightAnchor.constraint(equalToConstant: 120)
        ])
        
        NSLayoutConstraint.activate([
            titleText.centerXAnchor.constraint(equalTo: titleView.centerXAnchor),
            titleText.bottomAnchor.constraint(equalTo: titleView.bottomAnchor, constant: -12),
            titleText.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        NSLayoutConstraint.activate([
            tabbarTop.topAnchor.constraint(equalTo: titleView.bottomAnchor),
            tabbarTop.bottomAnchor.constraint(equalTo: topView.bottomAnchor),
            tabbarTop.leadingAnchor.constraint(equalTo: topView.leadingAnchor),
            tabbarTop.trailingAnchor.constraint(equalTo: topView.trailingAnchor)
        ])
    }
    
    func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 60
        tableView.register(OrderTableViewCell.self, forCellReuseIdentifier: "OrderCell")
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 15),
            tableView.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 15),
            tableView.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -15),
            tableView.heightAnchor.constraint(equalToConstant: 140)
        ])
    }
    
    func setupLayout() {
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        totalView.translatesAutoresizingMaskIntoConstraints = false
        totalStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            bottomView.heightAnchor.constraint(equalToConstant: 270),
            
            buttonStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            buttonStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            buttonStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            
            totalView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            totalView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            totalView.topAnchor.constraint(equalTo: tableView.bottomAnchor, constant: 5),
            totalView.heightAnchor.constraint(equalToConstant: 30),
            
            totalStackView.leadingAnchor.constraint(equalTo: totalView.leadingAnchor, constant: 15),
            totalStackView.trailingAnchor.constraint(equalTo: totalView.trailingAnchor, constant: -15),
            totalStackView.centerYAnchor.constraint(equalTo: totalView.centerYAnchor),
            totalStackView.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    func setMiddleUI() {
        view.addSubview(bottomView)
        
        let breadLabel: UILabel = .init()
        breadLabel.text = "빵"
        breadLabel.font = UIFont.systemFont(ofSize: 18.0, weight: .regular)
        let cheezeLabel: UILabel = .init()
        cheezeLabel.text = "치즈"
        cheezeLabel.font = UIFont.systemFont(ofSize: 18.0, weight: .regular)
        let toastLabel: UILabel = .init()
        toastLabel.text = "토스팅"
        toastLabel.font = UIFont.systemFont(ofSize: 18.0, weight: .regular)
        let vegiLabel: UILabel = .init()
        vegiLabel.text = "야채"
        vegiLabel.font = UIFont.systemFont(ofSize: 18.0, weight: .regular)
        let sauceLabel: UILabel = .init()
        sauceLabel.text = "소스/시즈닝"
        sauceLabel.font = UIFont.systemFont(ofSize: 18.0, weight: .regular)
        let chooseLabel: UILabel = .init()
        chooseLabel.text = "크기"
        chooseLabel.font = UIFont.systemFont(ofSize: 18.0, weight: .regular)
        
        let cancelButton: UIButton = .init(frame: .init())
        cancelButton.setTitle("취소하기", for: .normal)
        cancelButton.setTitleColor(.white, for: .normal)
        cancelButton.backgroundColor = .subGreen
        cancelButton.titleLabel?.font = UIFont.systemFont(ofSize: 19.0, weight: .bold)
        //label.font = UIFont.systemFont(ofSize: 35.0, weight: .black)
        cancelButton.layer.cornerRadius = 15
        cancelButton.addTarget(self, action: #selector(cancelButtonTapped), for: .touchUpInside)
        
        let cartButton: UIButton = .init(frame: .init())
        cartButton.setTitle("카트에 담기", for: .normal)
        cartButton.setTitleColor(.white, for: .normal)
        cartButton.backgroundColor = .subGreen
        cartButton.titleLabel?.font = UIFont.systemFont(ofSize: 19.0, weight: .bold)
        cartButton.layer.cornerRadius = 15
        cartButton.addTarget(self, action: #selector(cartButtonTapped), for: .touchUpInside)
        
        lazy var cartStackView: UIStackView = {
            let stview = UIStackView(arrangedSubviews: [cancelButton, cartButton])
            stview.spacing = 20
            stview.axis = .horizontal
            stview.distribution = .fillEqually
            stview.alignment = .fill
            return stview
        }()
        
        self.view.addSubview(breadLabel)
        self.view.addSubview(cheezeLabel)
        self.view.addSubview(toastLabel)
        self.view.addSubview(vegiLabel)
        self.view.addSubview(sauceLabel)
        self.view.addSubview(chooseLabel)
        self.view.addSubview(chooseStackView)
        self.view.addSubview(OXStackView)
        self.view.addSubview(cartStackView)
        self.view.addSubview(breadHorizontalBar)
        self.view.addSubview(cheezeHorizontalBar)
        self.view.addSubview(vegiHorizontalBar)
        self.view.addSubview(sauceHorizontalBar)
        
        breadHorizontalBar.delegate = self
        breadHorizontalBar.dataSource = self
        breadHorizontalBar.register(BreadCollectionViewCell.self, forCellWithReuseIdentifier: "BreadCollectionViewCell")
        NSLayoutConstraint.activate([
            //breadHorizontalBar.topAnchor.constraint(equalTo: tabbarTop.bottomAnchor, constant: 25),
            breadHorizontalBar.centerYAnchor.constraint(equalTo: breadLabel.centerYAnchor),
            breadHorizontalBar.heightAnchor.constraint(equalToConstant: 30),

            breadHorizontalBar.leadingAnchor.constraint(equalTo: breadLabel.trailingAnchor, constant: 35),
            breadHorizontalBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        cheezeHorizontalBar.delegate = self
        cheezeHorizontalBar.dataSource = self
        cheezeHorizontalBar.register(CheezeCollectionViewCell.self, forCellWithReuseIdentifier: "CheezeCollectionViewCell")
        NSLayoutConstraint.activate([
            //cheezeHorizontalBar.topAnchor.constraint(equalTo: breadHorizontalBar.bottomAnchor, constant: 45),
            cheezeHorizontalBar.centerYAnchor.constraint(equalTo: cheezeLabel.centerYAnchor),
            cheezeHorizontalBar.heightAnchor.constraint(equalToConstant: 30),
            cheezeHorizontalBar.leadingAnchor.constraint(equalTo: cheezeLabel.trailingAnchor, constant: 35),
            cheezeHorizontalBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        vegiHorizontalBar.delegate = self
        vegiHorizontalBar.dataSource = self
        vegiHorizontalBar.register(VegiCollectionViewCell.self, forCellWithReuseIdentifier: "VegiCollectionViewCell")
        vegiHorizontalBar.allowsMultipleSelection = true
        
        NSLayoutConstraint.activate([
            //vegiHorizontalBar.topAnchor.constraint(equalTo: OXStackView.bottomAnchor, constant: 43),
            vegiHorizontalBar.centerYAnchor.constraint(equalTo: vegiLabel.centerYAnchor),
            vegiHorizontalBar.heightAnchor.constraint(equalToConstant: 30),
            vegiHorizontalBar.leadingAnchor.constraint(equalTo: vegiLabel.trailingAnchor, constant: 35),
            vegiHorizontalBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        sauceHorizontalBar.delegate = self
        sauceHorizontalBar.dataSource = self
        sauceHorizontalBar.register(SauceCollectionViewCell.self, forCellWithReuseIdentifier: "SauceCollectionViewCell")
        sauceHorizontalBar.allowsMultipleSelection = true
        
        NSLayoutConstraint.activate([

            //sauceHorizontalBar.topAnchor.constraint(equalTo: vegiHorizontalBar.bottomAnchor, constant: 45),
            sauceHorizontalBar.centerYAnchor.constraint(equalTo: sauceLabel.centerYAnchor),
            sauceHorizontalBar.heightAnchor.constraint(equalToConstant: 30),
            sauceHorizontalBar.leadingAnchor.constraint(equalTo: sauceLabel.trailingAnchor, constant: 35),
            sauceHorizontalBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])

        breadLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            breadLabel.topAnchor.constraint(equalTo: tabbarTop.bottomAnchor, constant: 25),
            breadLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 35)
        ])
        
        cheezeLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cheezeLabel.topAnchor.constraint(equalTo: breadLabel.bottomAnchor, constant: 35),
            cheezeLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 35)
        ])
        
        toastLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            toastLabel.topAnchor.constraint(equalTo: cheezeLabel.bottomAnchor, constant: 35),
            toastLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 35)
        ])
        
        OXStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            //OXStackView.topAnchor.constraint(equalTo: cheezeHorizontalBar.topAnchor, constant: 63),
            OXStackView.centerYAnchor.constraint(equalTo: toastLabel.centerYAnchor),
            OXStackView.heightAnchor.constraint(equalToConstant: 30),
            OXStackView.leadingAnchor.constraint(equalTo: toastLabel.trailingAnchor, constant: 60),
            OXStackView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -10)
        ])
        
        vegiLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            vegiLabel.topAnchor.constraint(equalTo: toastLabel.bottomAnchor, constant: 35),
            vegiLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 35)
        ])
        sauceLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            sauceLabel.topAnchor.constraint(equalTo: vegiLabel.bottomAnchor, constant: 35),
            sauceLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 35)
        ])
        chooseLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            chooseLabel.topAnchor.constraint(equalTo: sauceLabel.bottomAnchor, constant: 35),
            chooseLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 35)
        ])
        chooseStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            //chooseStackView.topAnchor.constraint(equalTo: sauceHorizontalBar.topAnchor, constant: 63),
            chooseStackView.centerYAnchor.constraint(equalTo: chooseLabel.centerYAnchor),
            chooseStackView.heightAnchor.constraint(equalToConstant: 30),
            chooseStackView.leadingAnchor.constraint(equalTo: chooseLabel.trailingAnchor, constant: 60),
            chooseStackView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -10)
        ])
        
        cartStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cartStackView.bottomAnchor.constraint(equalTo: bottomView.topAnchor, constant: -12),
            cartStackView.heightAnchor.constraint(equalToConstant: 35),
            cartStackView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            cartStackView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -30)
        ])
    }
  
    @objc func oxButtonTapped (_ sender: UIButton) {
        oButton.isSelected = false
        xButton.isSelected = false
        oButton.backgroundColor = .clear
        xButton.backgroundColor = .clear
        oButton.setTitleColor(.darkGray, for: .normal)
        xButton.setTitleColor(.darkGray, for: .normal)
        
        sender.isSelected = true
        sender.backgroundColor = .subYellow
        sender.setTitleColor(.black, for: .normal)
        order.toast = sender.currentTitle == "O" ? .toast : .plain
    }

    @objc func cmButtonTapped (_ sender: UIButton) {
        _15Button.isSelected = false
        _30Button.isSelected = false
        _15Button.backgroundColor = .clear
        _30Button.backgroundColor = .clear
        _15Button.setTitleColor(.darkGray, for: .normal)
        _30Button.setTitleColor(.darkGray, for: .normal)
        
        sender.isSelected = true
        sender.backgroundColor = .subYellow
        sender.setTitleColor(.black, for: .normal)
        order.size = sender.currentTitle == "15cm" ? .half : .whole
    }
    
    @objc func initButtonTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.1, animations: {
            self.initButton.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
        }) { _ in
            UIView.animate(withDuration: 0.1) {
                self.initButton.transform = CGAffineTransform.identity
            }
        }
        let alert = UIAlertController(title: "취소하기", message: "주문을 취소하시겠습니까?", preferredStyle: .alert)
        let add = UIAlertAction(title: "확인", style: .default) { [weak self] _ in
            guard let self = self else { return }
            self.orderList = []
            self.tableView.reloadData()
            self.totalCountLabel.text = "0개"
            self.totalPriceLabel.text = "0원"
            self.totalValue = 0
            self.stepperValues = []
        }
        
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        alert.addAction(add)
        alert.addAction(cancel)
            
        self.present(alert, animated: false)
    }
    
    @objc func payButtonTapped() {
        UIView.animate(withDuration: 0.1, animations: {
            self.payButton.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
        }) { _ in
            UIView.animate(withDuration: 0.1) {
                self.payButton.transform = CGAffineTransform.identity
            }
        }
        let alert = UIAlertController(title: "결제하기", message: "결제하시겠습니까?", preferredStyle: .alert)
        let add = UIAlertAction(title: "확인", style: .default)
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        alert.addAction(add)
        alert.addAction(cancel)
            
        self.present(alert, animated: false)
    }
    
    @objc func cartButtonTapped() {
        orderList.append(order)
        stepperValues.append(1)
        tableView.reloadData()
        updateTotalValue()
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal

        totalCountLabel.text = "\(totalValue)개"
        totalPriceLabel.text = "\(formatter.string(from: NSNumber(value: totalValue * 8000)) ?? "0")원"
        
        initFunc()
    }
    
    @objc func cancelButtonTapped() {
        initFunc()
    }
    
    func updateTotalValue() {
        totalValue = stepperValues.reduce(0, +)
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal

        totalCountLabel.text = "\(totalValue)개"
        totalPriceLabel.text = "\(formatter.string(from: NSNumber(value: totalValue * 8000)) ?? "0")원"
    }
    
    func initFunc() {
        for i in [breadHorizontalBar, cheezeHorizontalBar,vegiHorizontalBar, sauceHorizontalBar] {
            if let indexPaths = i.indexPathsForSelectedItems {
                for indexPath in indexPaths {
                    i.deselectItem(at: indexPath, animated: false)
                }
            }
        }
        oButton.backgroundColor = .clear
        xButton.backgroundColor = .clear
        _15Button.backgroundColor = .clear
        _30Button.backgroundColor = .clear
    }
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTopUI()
        setMiddleUI()
        setupTableView()
        setupLayout()
 
    }
}

// MARK: - extension
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == tabbarTop {
            return menuList.count
        } else if collectionView == breadHorizontalBar {
            return breadList.count
        } else if collectionView == cheezeHorizontalBar {
            return cheezeList.count
        } else if collectionView == vegiHorizontalBar {
            return vegiList.count
        } else {
            return sauceList.count
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == tabbarTop {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TabbarTopCollectionViewCell", for: indexPath) as? TabbarTopCollectionViewCell else{ return UICollectionViewCell()}
            cell.menuText.text = menuList[indexPath.row]
            cell.menuText.textColor = .darkGray
            return cell
        } else if collectionView == breadHorizontalBar {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BreadCollectionViewCell", for: indexPath) as? BreadCollectionViewCell else{return UICollectionViewCell()}
            cell.breadText.text = breadList[indexPath.row]
            cell.breadText.textColor = .darkGray
            return cell
        } else if collectionView == cheezeHorizontalBar {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CheezeCollectionViewCell", for: indexPath) as? CheezeCollectionViewCell else{return UICollectionViewCell()}
            cell.cheezeText.text = cheezeList[indexPath.row]
            cell.cheezeText.textColor = .darkGray
            return cell
        } else if collectionView == vegiHorizontalBar {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "VegiCollectionViewCell", for: indexPath) as? VegiCollectionViewCell else{return UICollectionViewCell()}
            cell.vegiText.text = vegiList[indexPath.row]
            cell.vegiText.textColor = .darkGray
            return cell
        } else {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SauceCollectionViewCell", for: indexPath) as? SauceCollectionViewCell else{return UICollectionViewCell()}
            cell.sauceText.text = sauceList[indexPath.row]
            cell.sauceText.textColor = .darkGray
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == tabbarTop {
            let text = menuList[indexPath.row]
            let font = UIFont.systemFont(ofSize: 20)
            let textWidth = text.size(withAttributes: [NSAttributedString.Key.font: font]).width
            let cellWidth = textWidth + 20
            return CGSize(width: cellWidth, height: 60)
        } else if collectionView == breadHorizontalBar  {
            let text = breadList[indexPath.row]
            let font = UIFont.systemFont(ofSize: 18)
            let textWidth = text.size(withAttributes: [NSAttributedString.Key.font: font]).width
            let cellWidth = textWidth + 15
            return CGSize(width: cellWidth, height: 30)
        } else if collectionView == cheezeHorizontalBar {
            let text = cheezeList[indexPath.row]
            let font = UIFont.systemFont(ofSize: 20)
            let textWidth = text.size(withAttributes: [NSAttributedString.Key.font: font]).width
            let cellWidth = textWidth + 15
            return CGSize(width: cellWidth, height: 30)
        } else if collectionView == vegiHorizontalBar {
            let text = vegiList[indexPath.row]
            let font = UIFont.systemFont(ofSize: 20)
            let textWidth = text.size(withAttributes: [NSAttributedString.Key.font: font]).width
            let cellWidth = textWidth + 10
            return CGSize(width: cellWidth, height: 30)
        } else {
            let text = sauceList[indexPath.row]
            let font = UIFont.systemFont(ofSize: 20)
            let textWidth = text.size(withAttributes: [NSAttributedString.Key.font: font]).width
            let cellWidth = textWidth + 10
            return CGSize(width: cellWidth, height: 30)
        }
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == tabbarTop {
            initFunc()
            let cell = collectionView.cellForItem(at: indexPath) as! TabbarTopCollectionViewCell
            let menu = cell.menuText.text
            switch menu {
            case "에그마요":
                order = Order(menu: Menu.eggmayo)
            case "폴드포크":
                order = Order(menu: Menu.pulled)
            case "쉬림프":
                order = Order(menu: Menu.shrimp)
            case "이탈리안비엘티":
                order = Order(menu: Menu.italian)
            case "스파이시이탈리안비엘티":
                order = Order(menu: Menu.spicy)
            case "k바베큐":
                order = Order(menu: Menu.kbarbeque)
            case "스테이크앤치즈":
                order = Order(menu: Menu.steakcheese)
            default:
                break
            }
        }
        if collectionView == breadHorizontalBar {
            let cell = collectionView.cellForItem(at: indexPath) as! BreadCollectionViewCell
            let bread = cell.breadText.text
            switch bread {
            case "플랫브레드":
                order.bread = .flat
            case "허니오트":
                order.bread = .honey
            case "하티":
                order.bread = .hearty
            case "파마산오레가노":
                order.bread = .parmesan
            case "화이트":
                order.bread = .white
            case "위트":
                order.bread = .wheat
            default:
                order.bread = .flat
            }
        }
        if collectionView == cheezeHorizontalBar {
            let cell = collectionView.cellForItem(at: indexPath) as! CheezeCollectionViewCell
            let cheese = cell.cheezeText.text
            switch cheese {
            case "슈레드치즈":
                order.cheese = .shredded
            case "아메리칸치즈":
                order.cheese = .american
            case "모짜렐라치즈":
                order.cheese = .mozza
            default:
                order.cheese = .shredded
            }
        }
        if collectionView == vegiHorizontalBar {
            let cell = collectionView.cellForItem(at: indexPath) as! VegiCollectionViewCell
            let veggie = cell.vegiText.text
            switch veggie {
            case "양상추":
                order.veggie.append(.lettuce)
            case "토마토":
                order.veggie.append(.tomato)
            case "오이":
                order.veggie.append(.cucumber)
            case "피클":
                order.veggie.append(.pickle)
            case "올리브":
                order.veggie.append(.olive)
            case "양파":
                order.veggie.append(.onion)
            default:
                break
            }
        }
        if collectionView == sauceHorizontalBar {
            let cell = collectionView.cellForItem(at: indexPath) as! SauceCollectionViewCell
            let sauce = cell.sauceText.text
            switch sauce {
            case "랜치":
                order.sauce.append(.ranch)
            case "마요네즈":
                order.sauce.append(.mayo)
            case "머스타드":
                order.sauce.append(.mustard)
            case "홀스래디쉬":
                order.sauce.append(.horse)
            case "핫칠리":
                order.sauce.append(.hotchilli)
            case "올리브오일":
                order.sauce.append(.oliveoil)
            default:
                break
            }
        }
    }
}
    
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orderList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderCell", for: indexPath) as! OrderTableViewCell
        let order = orderList[indexPath.row]
        cell.menuLabel.text = order.menu.rawValue
        cell.optionLabel.text! = [order.bread.rawValue, order.cheese.rawValue, order.toast.rawValue].joined(separator: ", ")
        cell.selectionStyle = .none
        cell.stepperValueChanged = { [weak self] newValue in
            self?.stepperValues[indexPath.row] = newValue
            self?.updateTotalValue()
        }
        return cell
    }

}
