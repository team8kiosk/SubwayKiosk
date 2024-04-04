//
//  VegiCollectionViewCell.swift
//  SubwayKiosk
//
//  Created by 최진문 on 2024/04/03.
//

import UIKit

class VegiCollectionViewCell: UICollectionViewCell {
    
    let vegiBackView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let vegiText: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 18.0, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override var isSelected: Bool {
        didSet{
            if isSelected {
                vegiBackView.backgroundColor = UIColor.yellow
                vegiText.textColor = .black
            }
            else {
                vegiText.textColor = .systemBlue
                vegiBackView.backgroundColor = UIColor.white
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        addSubview(vegiBackView)
        vegiBackView.addSubview(vegiText)
        
        NSLayoutConstraint.activate([
                    vegiBackView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
                    vegiBackView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
                    vegiBackView.widthAnchor.constraint(equalTo: contentView.widthAnchor),
                    vegiBackView.heightAnchor.constraint(equalTo: contentView.heightAnchor)
                ])
        
        NSLayoutConstraint.activate([
            vegiText.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            vegiText.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
