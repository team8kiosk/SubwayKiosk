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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let top: UIView = .init()
        top.backgroundColor = .cyan
        
        let breadLabel: UILabel = .init()
        breadLabel.text = "빵"
        breadLabel.font = UIFont.systemFont(ofSize: 25.0, weight: .regular)
        let cheezeLabel: UILabel = .init()
        cheezeLabel.text = "치즈"
        cheezeLabel.font = UIFont.systemFont(ofSize: 25.0, weight: .regular)
        let toastLabel: UILabel = .init()
        toastLabel.text = "토스팅"
        toastLabel.font = UIFont.systemFont(ofSize: 25.0, weight: .regular)
        let vegiLabel: UILabel = .init()
        vegiLabel.text = "야채"
        vegiLabel.font = UIFont.systemFont(ofSize: 25.0, weight: .regular)
        let sauceLabel: UILabel = .init()
        sauceLabel.text = "소스/시즈닝"
        sauceLabel.font = UIFont.systemFont(ofSize: 25.0, weight: .regular)
        let chooseLabel: UILabel = .init()
        chooseLabel.text = "크기"
        chooseLabel.font = UIFont.systemFont(ofSize: 25.0, weight: .regular)
        
        let _15cm: UIButton = .init(frame: .init())
        _15cm.setTitle("15cm", for: .normal)
        _15cm.setTitleColor(.systemBlue, for: .normal)
        
        let _30cm: UIButton = .init(frame: .init())
        _30cm.setTitle("30cm", for: .normal)
        _30cm.setTitleColor(.systemBlue, for: .normal)
        
        lazy var chooseStackView: UIStackView = {
            let stview = UIStackView(arrangedSubviews: [_15cm, _30cm])
            stview.spacing = -60
            stview.axis = .horizontal
            stview.distribution = .fillEqually
            stview.alignment = .fill
            return stview
        }()
        
        let Obutton: UIButton = .init(frame: .init())
        Obutton.setTitle("O", for: .normal)
        Obutton.setTitleColor(.systemBlue, for: .normal)
        
        let Xbutton: UIButton = .init(frame: .init())
        Xbutton.setTitle("X", for: .normal)
        Xbutton.setTitleColor(.systemBlue, for: .normal)
        
        lazy var OXStackView: UIStackView = {
            let stview = UIStackView(arrangedSubviews: [Obutton, Xbutton])
            stview.spacing = -60
            stview.axis = .horizontal
            stview.distribution = .fillEqually
            stview.alignment = .fill
            return stview
        }()
        
        let cancelButton: UIButton = .init(frame: .init())
        cancelButton.setTitle("취소하기", for: .normal)
        cancelButton.setTitleColor(.systemBlue, for: .normal)
        
        let cartButton: UIButton = .init(frame: .init())
        cartButton.setTitle("카트에 담기", for: .normal)
        cartButton.setTitleColor(.systemBlue, for: .normal)
        
        lazy var cartStackView: UIStackView = {
            let stview = UIStackView(arrangedSubviews: [cancelButton, cartButton])
            stview.spacing = -60
            stview.axis = .horizontal
            stview.distribution = .fillEqually
            stview.alignment = .fill
            return stview
        }()
        
        let bottom: UIView = .init()
        bottom.backgroundColor = .yellow
        
        self.view.addSubview(top)
        self.view.addSubview(breadLabel)
        self.view.addSubview(cheezeLabel)
        self.view.addSubview(toastLabel)
        self.view.addSubview(vegiLabel)
        self.view.addSubview(sauceLabel)
        self.view.addSubview(chooseLabel)
        self.view.addSubview(chooseStackView)
        self.view.addSubview(bottom)
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
            breadHorizontalBar.topAnchor.constraint(equalTo: top.bottomAnchor, constant: 14),
            breadHorizontalBar.heightAnchor.constraint(equalToConstant: 50),
            breadHorizontalBar.leadingAnchor.constraint(equalTo: breadLabel.trailingAnchor, constant: 70),
            breadHorizontalBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        
        cheezeHorizontalBar.delegate = self
        cheezeHorizontalBar.dataSource = self
        cheezeHorizontalBar.register(CheezeCollectionViewCell.self, forCellWithReuseIdentifier: "CheezeCollectionViewCell")
        
        NSLayoutConstraint.activate([
            cheezeHorizontalBar.topAnchor.constraint(equalTo: breadHorizontalBar.bottomAnchor, constant: 20),
            cheezeHorizontalBar.heightAnchor.constraint(equalToConstant: 50),
            cheezeHorizontalBar.leadingAnchor.constraint(equalTo: cheezeLabel.trailingAnchor, constant: 50),
            cheezeHorizontalBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        vegiHorizontalBar.delegate = self
        vegiHorizontalBar.dataSource = self
        vegiHorizontalBar.register(VegiCollectionViewCell.self, forCellWithReuseIdentifier: "VegiCollectionViewCell")
        
        NSLayoutConstraint.activate([
            vegiHorizontalBar.topAnchor.constraint(equalTo: OXStackView.bottomAnchor, constant: 30),
            vegiHorizontalBar.heightAnchor.constraint(equalToConstant: 50),
            vegiHorizontalBar.leadingAnchor.constraint(equalTo: vegiLabel.trailingAnchor, constant: 56),
            vegiHorizontalBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        sauceHorizontalBar.delegate = self
        sauceHorizontalBar.dataSource = self
        sauceHorizontalBar.register(SauceCollectionViewCell.self, forCellWithReuseIdentifier: "SauceCollectionViewCell")
        
        NSLayoutConstraint.activate([
            sauceHorizontalBar.topAnchor.constraint(equalTo: vegiHorizontalBar.bottomAnchor, constant: 10),
            sauceHorizontalBar.heightAnchor.constraint(equalToConstant: 50),
            sauceHorizontalBar.leadingAnchor.constraint(equalTo: sauceLabel.trailingAnchor, constant: 50),
            sauceHorizontalBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        top.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            top.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
            top.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            top.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            top.heightAnchor.constraint(equalToConstant: 180)
        ])
        
        
        breadLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            breadLabel.topAnchor.constraint(equalTo: top.bottomAnchor, constant: 25),
            breadLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 70)
        ])
        
        cheezeLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cheezeLabel.topAnchor.constraint(equalTo: breadLabel.bottomAnchor, constant: 40),
            cheezeLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 70)
        ])
        
        toastLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            toastLabel.topAnchor.constraint(equalTo: cheezeLabel.bottomAnchor, constant: 40),
            toastLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 70)
        ])
        OXStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            OXStackView.topAnchor.constraint(equalTo: cheezeHorizontalBar.topAnchor, constant: 77),
            OXStackView.leadingAnchor.constraint(equalTo: toastLabel.trailingAnchor, constant: 60),
            OXStackView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: 0)
        ])
        
        vegiLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            vegiLabel.topAnchor.constraint(equalTo: toastLabel.bottomAnchor, constant: 40),
            vegiLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 70)
        ])
        sauceLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            sauceLabel.topAnchor.constraint(equalTo: vegiLabel.bottomAnchor, constant: 30),
            sauceLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 70)
        ])
        chooseLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            chooseLabel.bottomAnchor.constraint(equalTo: cancelButton.topAnchor, constant: -20),
            chooseLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 70)
        ])
        chooseStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            chooseStackView.bottomAnchor.constraint(equalTo: cartButton.topAnchor, constant: -20),
            chooseStackView.leadingAnchor.constraint(equalTo: chooseLabel.trailingAnchor, constant: 60),
            chooseStackView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: 0)
        ])

        cartStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cartStackView.bottomAnchor.constraint(equalTo: bottom.topAnchor, constant: -5),
            cartStackView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            cartStackView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: 0)
        ])
        
        bottom.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            bottom.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            bottom.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            bottom.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            bottom.heightAnchor.constraint(equalToConstant: 188)
        ])
    }
    
}

//실험용
#Preview {
    ViewController()
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == breadHorizontalBar {
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
        if collectionView == breadHorizontalBar {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BreadCollectionViewCell", for: indexPath) as? BreadCollectionViewCell else{return UICollectionViewCell()}
            cell.breadText.text = breadList[indexPath.row]
            cell.breadText.textColor = .systemBlue
            return cell
        } else if collectionView == cheezeHorizontalBar {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CheezeCollectionViewCell", for: indexPath) as? CheezeCollectionViewCell else{return UICollectionViewCell()}
            cell.cheezeText.text = cheezeList[indexPath.row]
            cell.cheezeText.textColor = .systemBlue
            return cell
        } else if collectionView == vegiHorizontalBar {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "VegiCollectionViewCell", for: indexPath) as? VegiCollectionViewCell else{return UICollectionViewCell()}
            cell.vegiText.text = vegiList[indexPath.row]
            cell.vegiText.textColor = .systemBlue
            return cell
        } else {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SauceCollectionViewCell", for: indexPath) as? SauceCollectionViewCell else{return UICollectionViewCell()}
            cell.sauceText.text = sauceList[indexPath.row]
            cell.sauceText.textColor = .systemBlue
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == breadHorizontalBar  {
            let text = breadList[indexPath.row]
            let font = UIFont.systemFont(ofSize: 18)
            let textWidth = text.size(withAttributes: [NSAttributedString.Key.font: font]).width
            let cellWidth = textWidth + 10
            return CGSize(width: cellWidth, height: 20)
        } else if collectionView == cheezeHorizontalBar {
            let text = cheezeList[indexPath.row]
            let font = UIFont.systemFont(ofSize: 20)
            let textWidth = text.size(withAttributes: [NSAttributedString.Key.font: font]).width
            let cellWidth = textWidth + 0
            return CGSize(width: cellWidth, height: 18)
        } else if collectionView == vegiHorizontalBar {
            let text = vegiList[indexPath.row]
            let font = UIFont.systemFont(ofSize: 20)
            let textWidth = text.size(withAttributes: [NSAttributedString.Key.font: font]).width
            let cellWidth = textWidth + 0
            return CGSize(width: cellWidth, height: 18)
        } else {
            let text = sauceList[indexPath.row]
            let font = UIFont.systemFont(ofSize: 20)
            let textWidth = text.size(withAttributes: [NSAttributedString.Key.font: font]).width
            let cellWidth = textWidth + 0
            return CGSize(width: cellWidth, height: 18)
        }
        
        
    }
    
}
