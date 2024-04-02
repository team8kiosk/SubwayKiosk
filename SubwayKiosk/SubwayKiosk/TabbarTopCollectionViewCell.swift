//
//  TabbarTopCollectionViewCell.swift
//  SubwayKiosk
//
//  Created by 신지연 on 2024/04/02.
//

import UIKit

class TabbarTopCollectionViewCell: UICollectionViewCell {
    
    let backView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let menuText: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 20.0, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override var isSelected: Bool {
        didSet{
            if isSelected {
                backView.backgroundColor = UIColor.lightGray
                menuText.textColor = .black
            }
            else {
                menuText.textColor = .gray
                backView.backgroundColor = UIColor.white
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(backView)
        backView.addSubview(menuText)
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            backView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            backView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            backView.widthAnchor.constraint(equalTo: contentView.widthAnchor),
            backView.heightAnchor.constraint(equalTo: contentView.heightAnchor)
        ])
        
        NSLayoutConstraint.activate([
            menuText.centerXAnchor.constraint(equalTo: backView.centerXAnchor),
            menuText.centerYAnchor.constraint(equalTo: backView.centerYAnchor)
        ])
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
