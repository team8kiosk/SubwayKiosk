//
//  ViewController.swift
//  SubwayKiosk
//
//  Created by CaliaPark on 4/1/24.
//

import UIKit

class ViewController: UIViewController {
    
    let breadList: [String] = ["플랫브레드", "허니오트", "하티", "파마산오레가노", "화이트", "위트"]
    let cheezeList: [String] = ["슈레드", "아메리칸", "모짜렐라"]
    
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
        
        let cancelButton: UIButton = .init(frame: .init())
        cancelButton.setTitle("취소하기", for: .normal)
        cancelButton.setTitleColor(.systemBlue, for: .normal)
        
        let cartButton: UIButton = .init(frame: .init())
        cartButton.setTitle("카트에 담기", for: .normal)
        cartButton.setTitleColor(.systemBlue, for: .normal)
        
        
        let bottom: UIView = .init()
        bottom.backgroundColor = .yellow
        
        self.view.addSubview(top)
        self.view.addSubview(breadLabel)
        self.view.addSubview(cheezeLabel)
        self.view.addSubview(toastLabel)
        self.view.addSubview(vegiLabel)
        self.view.addSubview(sauceLabel)
        self.view.addSubview(chooseLabel)
        self.view.addSubview(_15cm)
        self.view.addSubview(_30cm)
        self.view.addSubview(bottom)
        self.view.addSubview(cancelButton)
        self.view.addSubview(cartButton)
        self.view.addSubview(breadHorizontalBar)
        self.view.addSubview(cheezeHorizontalBar)
        
        breadHorizontalBar.delegate = self
        breadHorizontalBar.dataSource = self
        breadHorizontalBar.register(BreadCollectionViewCell.self, forCellWithReuseIdentifier: "BreadCollectionViewCell")
        
        NSLayoutConstraint.activate([
            breadHorizontalBar.topAnchor.constraint(equalTo: top.bottomAnchor, constant: 14),
            breadHorizontalBar.heightAnchor.constraint(equalToConstant: 50),
            breadHorizontalBar.leadingAnchor.constraint(equalTo: breadLabel.trailingAnchor, constant: 50),
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
        _15cm.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            _15cm.bottomAnchor.constraint(equalTo: cartButton.topAnchor, constant: -20),
            _15cm.leadingAnchor.constraint(equalTo: chooseLabel.trailingAnchor, constant: 0),
            _15cm.trailingAnchor.constraint(equalTo: _30cm.leadingAnchor, constant: -30)
        ])
        _30cm.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            _30cm.bottomAnchor.constraint(equalTo: cartButton.topAnchor, constant: -20),
            _30cm.leadingAnchor.constraint(equalTo: _15cm.trailingAnchor, constant: 0),
            _30cm.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -30)
        ])
        
        cancelButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cancelButton.bottomAnchor.constraint(equalTo: bottom.topAnchor, constant: -10),
            cancelButton.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 70)
        ])
        
        cartButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cartButton.bottomAnchor.constraint(equalTo: bottom.topAnchor, constant: -10),
            cartButton.leadingAnchor.constraint(equalTo: cancelButton.trailingAnchor, constant: 130)
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


#Preview {
    ViewController()
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == breadHorizontalBar {
            return breadList.count
        } else  {
            return cheezeList.count
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == breadHorizontalBar {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BreadCollectionViewCell", for: indexPath) as? BreadCollectionViewCell else{return UICollectionViewCell()}
            cell.breadText.text = breadList[indexPath.row]
            cell.breadText.textColor = .systemBlue
            return cell
        } else {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CheezeCollectionViewCell", for: indexPath) as? CheezeCollectionViewCell else{return UICollectionViewCell()}
            cell.cheezeText.text = cheezeList[indexPath.row]
            cell.cheezeText.textColor = .systemBlue
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
        } else {
            let text2 = cheezeList[indexPath.row]
            let font2 = UIFont.systemFont(ofSize: 20)
            let textWidth2 = text2.size(withAttributes: [NSAttributedString.Key.font: font2]).width
            let cellWidth2 = textWidth2 + 0
            return CGSize(width: cellWidth2, height: 18)
        }
        
        
    }
    
}
