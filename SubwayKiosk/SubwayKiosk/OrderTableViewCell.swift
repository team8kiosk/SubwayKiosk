//
//  OrderTableViewCell.swift
//  SubwayKiosk
//
//  Created by CaliaPark on 4/3/24.
//

import UIKit

class OrderTableViewCell: UITableViewCell {
    
        let menuImageView: UIImageView = {
            let imageView = UIImageView()
            return imageView
        }()
    
        let menuLabel: UILabel = {
            let label = UILabel()
            label.font = UIFont.boldSystemFont(ofSize: 15)
            return label
        }()
    
        let optionLabel: UILabel = {
            let label = UILabel()
            label.font = UIFont.systemFont(ofSize: 12)
            label.numberOfLines = 0
            return label
        }()
    
        lazy var stackView: UIStackView = {
            let stview = UIStackView(arrangedSubviews: [menuLabel, optionLabel])
            stview.axis = .vertical
            stview.distribution  = .fillProportionally
            stview.alignment = .fill
            stview.spacing = 2
            return stview
        }()
    
        let countLabel: UILabel = {
            let label = UILabel()
            label.font = UIFont.systemFont(ofSize: 17)
            label.numberOfLines = 0
            return label
        }()
    
        let stepper: UIStepper = {
            let stepper = UIStepper()
    
            return stepper
        }()
    
//        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//            super.init(style: .default, reuseIdentifier: reuseIdentifier)
//            setupStackView()
            // 셀 오토레이아웃 일반적으로 생성자에서 잡으면 됨
//            setupLayout()
        }
    
//        func setupStackView() {
//    
//            // self.addSubview보다 self.contentView.addSubview로 잡는게 더 정확함
//            // (cell은 기본뷰로 contentView를 가지고 있기 때문)
//            self.contentView.addSubview(mainImageView)
//            //self.addSubview(mainImageView)
//    
//            // self.contentView.addSubview로 잡는게 더 정확함
//            self.contentView.addSubview(stackView)
//            //self.addSubview(stackView)
//    
//            // 스택뷰 위에 뷰들 올리기
//            stackView.addArrangedSubview(movieNameLabel)
//            stackView.addArrangedSubview(descriptionLabel)
//        }
//    
//        required init?(coder: NSCoder) {
//            fatalError("init(coder:) has not been implemented")
//        }
//    
//        // 오토레이아웃 재계산 시점 (뷰가 변하는 경우) ===> 일반적으로 생성자에서 잡으면 됨
//    //    override func updateConstraints() {
//    //        setConstraints()
//    //        super.updateConstraints()
//    //    }
//    
//        func setupLayout() {
//    
//            imageView.translatesAutoresizingMaskIntoConstraints = false
//    
//    
//            NSLayoutConstraint.activate([
//                mainImageView.heightAnchor.constraint(equalToConstant: 100),
//                mainImageView.widthAnchor.constraint(equalToConstant: 100),
//    
//                // self.leadingAnchor로 잡는 것보다 self.contentView.leadingAnchor로 잡는게 더 정확함
//                // (cell은 기본뷰로 contentView를 가지고 있기 때문)
//                mainImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10),
//                mainImageView.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor)
//            ])
//        }
    
}
