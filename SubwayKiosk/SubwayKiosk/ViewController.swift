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
        let 탑: UIView = .init()
        탑.backgroundColor = .cyan
        
        let 빵레이블: UILabel = .init()
        빵레이블.text = "빵"
        let 치즈레이블: UILabel = .init()
        치즈레이블.text = "치즈"
        let 토스팅레이블: UILabel = .init()
        토스팅레이블.text = "토스팅"
        let 야채레이블: UILabel = .init()
        야채레이블.text = "야채"
        let 소스레이블: UILabel = .init()
        소스레이블.text = "소스/시즈닝"
        let 크기레이블: UILabel = .init()
        크기레이블.text = "크기"
        
        let _15cm버튼: UIButton = .init(frame: .init())
        _15cm버튼.backgroundColor = .red
        _15cm버튼.setTitle("15cm", for: .normal)
        
        let _30cm버튼: UIButton = .init(frame: .init())
        _30cm버튼.backgroundColor = .blue
        _30cm버튼.setTitle("30cm", for: .normal)
        
        let 취소하기버튼: UIButton = .init(frame: .init())
        취소하기버튼.backgroundColor = .red
        취소하기버튼.setTitle("취소하기", for: .normal)
        
        let 카트에담기버튼: UIButton = .init(frame: .init())
        카트에담기버튼.backgroundColor = .blue
        카트에담기버튼.setTitle("카트에 담기", for: .normal)
        
        
        let 바텀: UIView = .init()
        바텀.backgroundColor = .yellow

        
        self.view.addSubview(탑)
        self.view.addSubview(빵레이블)
        self.view.addSubview(치즈레이블)
        self.view.addSubview(토스팅레이블)
        self.view.addSubview(야채레이블)
        self.view.addSubview(소스레이블)
        self.view.addSubview(크기레이블)
        self.view.addSubview(_15cm버튼)
        self.view.addSubview(_30cm버튼)
        self.view.addSubview(바텀)
        self.view.addSubview(취소하기버튼)
        self.view.addSubview(카트에담기버튼)
        
        
        
        탑.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            탑.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
            탑.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            탑.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            탑.heightAnchor.constraint(equalToConstant: 180)
        ])
        
        
        빵레이블.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            빵레이블.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 150),
            빵레이블.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 70)
        ])
        
        치즈레이블.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            치즈레이블.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 220),
            치즈레이블.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 70)
        ])
        
        토스팅레이블.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            토스팅레이블.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 290),
            토스팅레이블.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 70)
        ])
        야채레이블.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            야채레이블.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 360),
            야채레이블.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 70)
     ])
        소스레이블.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            소스레이블.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 430),
            소스레이블.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 70)
        ])
        크기레이블.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            크기레이블.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 480),
            크기레이블.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 70)
        ])
        _15cm버튼.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            _15cm버튼.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -285),
            _15cm버튼.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 220),
            _15cm버튼.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -110)
        ])
        _30cm버튼.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            _30cm버튼.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -285),
            _30cm버튼.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 300),
            _30cm버튼.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -30)
        ])
        
        취소하기버튼.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            취소하기버튼.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -230),
            취소하기버튼.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            취소하기버튼.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -200)
        ])
        
        카트에담기버튼.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            카트에담기버튼.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -230),
            카트에담기버튼.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 200),
            카트에담기버튼.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -10)
        ])
        
        바텀.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            바텀.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            바텀.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            바텀.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            바텀.heightAnchor.constraint(equalToConstant: 188)
        ])
    }


}


#Preview {
  ViewController()
}

