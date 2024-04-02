//
//  ViewController.swift
//  SubwayKiosk
//
//  Created by CaliaPark on 4/1/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let top: UIView = .init()
        top.backgroundColor = .cyan
        
        let breadLabel: UILabel = .init()
        breadLabel.text = "빵"
        let cheezeLabel: UILabel = .init()
        cheezeLabel.text = "치즈"
        let toastLabel: UILabel = .init()
        toastLabel.text = "토스팅"
        let vegiLabel: UILabel = .init()
        vegiLabel.text = "야채"
        let sauceLabel: UILabel = .init()
        sauceLabel.text = "소스/시즈닝"
        let chooseLabel: UILabel = .init()
        chooseLabel.text = "크기"
        
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
        
        
        top.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            top.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
            top.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            top.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            top.heightAnchor.constraint(equalToConstant: 180)
        ])
        
        
        breadLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            breadLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 150),
            breadLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 70)
        ])
        
        cheezeLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cheezeLabel.topAnchor.constraint(equalTo: breadLabel.bottomAnchor, constant: 50),
            cheezeLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 70)
        ])
        
        toastLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            toastLabel.topAnchor.constraint(equalTo: cheezeLabel.bottomAnchor, constant: 50),
            toastLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 70)
        ])
        vegiLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            vegiLabel.topAnchor.constraint(equalTo: toastLabel.bottomAnchor, constant: 50),
            vegiLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 70)
     ])
        sauceLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            sauceLabel.topAnchor.constraint(equalTo: vegiLabel.bottomAnchor, constant: 50),
            sauceLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 70)
        ])
        chooseLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            chooseLabel.topAnchor.constraint(equalTo: sauceLabel.bottomAnchor, constant: 30),
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

