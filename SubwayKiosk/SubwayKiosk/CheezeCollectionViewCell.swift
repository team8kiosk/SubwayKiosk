//
//  CheezeCollectionViewCell.swift
//  SubwayKiosk
//
//  Created by 최진문 on 2024/04/03.
//


import UIKit

class CheezeCollectionViewCell: UICollectionViewCell {
    let cheezeText: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 18.0, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        self.addSubview(cheezeText)
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            cheezeText.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            cheezeText.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
