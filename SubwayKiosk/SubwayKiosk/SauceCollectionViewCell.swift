//
//  SauceCollectionViewCell.swift
//  SubwayKiosk
//
//  Created by 최진문 on 2024/04/03.
//

import UIKit

class SauceCollectionViewCell: UICollectionViewCell {
    
    let sauceBackView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 15
        return view
    }()
    
    let sauceText: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 18.0, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override var isSelected: Bool {
        didSet{
            if isSelected {
                sauceBackView.backgroundColor = UIColor.subYellow
                sauceText.textColor = .black
            }
            else {
                sauceBackView.backgroundColor = UIColor.white
                sauceText.textColor = .darkGray
            }
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        addSubview(sauceBackView)
        sauceBackView.addSubview(sauceText)
        
        NSLayoutConstraint.activate([
                    sauceBackView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
                    sauceBackView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
                    sauceBackView.widthAnchor.constraint(equalTo: contentView.widthAnchor),
                    sauceBackView.heightAnchor.constraint(equalTo: contentView.heightAnchor)
                ])
        
        NSLayoutConstraint.activate([
            sauceText.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            sauceText.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
