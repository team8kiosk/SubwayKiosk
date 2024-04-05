//
//  BreadCollectionViewCell.swift
//  SubwayKiosk
//
//  Created by 최진문 on 2024/04/03.
//

import UIKit

class BreadCollectionViewCell: UICollectionViewCell {
    let breadBackView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 20
        return view
    }()

    let breadText: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 18.0, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override var isSelected: Bool {
        didSet{
            if isSelected {
                breadBackView.backgroundColor = UIColor.yellow
            }
            else {
                breadBackView.backgroundColor = UIColor.white
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(breadBackView)
        breadBackView.addSubview(breadText)
        
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
                    breadBackView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
                    breadBackView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
                    breadBackView.widthAnchor.constraint(equalTo: contentView.widthAnchor),
                    breadBackView.heightAnchor.constraint(equalTo: contentView.heightAnchor)
                ])
        NSLayoutConstraint.activate([
            breadText.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            breadText.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

