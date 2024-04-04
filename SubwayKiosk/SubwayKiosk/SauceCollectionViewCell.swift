//
//  SauceCollectionViewCell.swift
//  SubwayKiosk
//
//  Created by 최진문 on 2024/04/03.
//

import UIKit

class SauceCollectionViewCell: UICollectionViewCell {
    let sauceText: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 18.0, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        self.addSubview(sauceText)
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            sauceText.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            sauceText.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
