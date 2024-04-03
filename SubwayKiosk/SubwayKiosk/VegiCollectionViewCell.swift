//
//  VegiCollectionViewCell.swift
//  SubwayKiosk
//
//  Created by 최진문 on 2024/04/03.
//

import UIKit

class VegiCollectionViewCell: UICollectionViewCell {
    let vegiText: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 18.0, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        self.addSubview(vegiText)
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            vegiText.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            vegiText.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
