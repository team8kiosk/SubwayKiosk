//
//  ViewController.swift
//  SubwayKiosk
//
//  Created by CaliaPark on 4/1/24.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    let menuList: [String] = ["에그마요", "폴드포크", "쉬림프", "이탈리안비엘티", "스파이시이탈리안비엘티", "k바베큐", "스테이크앤치즈"]
    
    lazy var topView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.clear
        return view
    }() 
    
    lazy var titleView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.green
        return view
    }()
    
    lazy var titleText: UILabel = {
        let label = UILabel()
        label.text = "SubEight"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 35.0, weight: .black)
        label.clipsToBounds = true
        return label
    }()
    
    let collectionViewFlowLayout: UICollectionViewFlowLayout = {
        let flowlayout = UICollectionViewFlowLayout()
        flowlayout.scrollDirection = .horizontal
        flowlayout.minimumLineSpacing = 15
        flowlayout.sectionInset = UIEdgeInsets(top:0, left:0, bottom: 0, right: 0)
        return flowlayout
    }()
    
    lazy var tabbarTop: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewFlowLayout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    
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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setTopUI()
    }
}

//MARK: - Extension
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menuList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TabbarTopCollectionViewCell", for: indexPath) as? TabbarTopCollectionViewCell else{ return UICollectionViewCell()}
        cell.menuText.text = menuList[indexPath.row]
        cell.menuText.textColor = .gray
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let text = menuList[indexPath.row]
        let font = UIFont.systemFont(ofSize: 20)
        let textWidth = text.size(withAttributes: [NSAttributedString.Key.font: font]).width
        let cellWidth = textWidth + 20
        return CGSize(width: cellWidth, height: 60)
    }
    
}
