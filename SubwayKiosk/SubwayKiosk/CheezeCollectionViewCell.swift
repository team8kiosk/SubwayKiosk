//
//  CheezeCollectionViewCell.swift
//  SubwayKiosk
//
//  Created by 최진문 on 2024/04/03.
//


import UIKit

class CheezeCollectionViewCell: UICollectionViewCell {
    let cheezeBackView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 15
        return view
    }()
    
    let cheezeText: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 18.0, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override var isSelected: Bool {
        didSet{
            if isSelected {
                cheezeBackView.backgroundColor = UIColor.subYellow
                cheezeText.textColor = .black
            }
            else {
                cheezeBackView.backgroundColor = UIColor.white
                cheezeText.textColor = .darkGray
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(cheezeBackView)
        cheezeBackView.addSubview(cheezeText)
        
        NSLayoutConstraint.activate([
                    cheezeBackView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
                    cheezeBackView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
                    cheezeBackView.widthAnchor.constraint(equalTo: contentView.widthAnchor),
                    cheezeBackView.heightAnchor.constraint(equalTo: contentView.heightAnchor)
                ])
        
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cheezeText.centerXAnchor.constraint(equalTo: cheezeBackView.centerXAnchor),
            cheezeText.centerYAnchor.constraint(equalTo: cheezeBackView.centerYAnchor)
        ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}


