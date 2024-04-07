//
//  OrderTableViewCell.swift
//  SubwayKiosk
//
//  Created by CaliaPark on 4/3/24.
//

import UIKit

class OrderTableViewCell: UITableViewCell {
    
    var count = 0
    var stepperValueChanged: ((Int) -> Void)?

    let menuLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    let optionLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = UIFont.systemFont(ofSize: 13)
        label.numberOfLines = 0
        label.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        return label
    }()
    
    lazy var stackView: UIStackView = {
        let stview = UIStackView(arrangedSubviews: [menuLabel, optionLabel])
        stview.axis = .vertical
        stview.distribution  = .fillProportionally
        stview.alignment = .fill
        stview.spacing = 0
        return stview
    }()
    
    let countLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17)
        label.text = "1"
        label.numberOfLines = 0
        return label
    }()
    
    let stepper: UIStepper = {
        let stepper = UIStepper()
        stepper.addTarget(self, action: #selector(stepperValueChanged(_:)), for: .valueChanged)
        return stepper
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        setupStackView()
        setupLayout()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        menuLabel.text = ""
        optionLabel.text = ""
    }
    
    func setupStackView() {
        self.contentView.addSubview(stackView)
        self.contentView.addSubview(stepper)
        self.contentView.addSubview(countLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    func setupLayout() {
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        countLabel.translatesAutoresizingMaskIntoConstraints = false
        stepper.translatesAutoresizingMaskIntoConstraints = false
        countLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.heightAnchor.constraint(equalToConstant: 40),
            stackView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 20),
            stackView.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor),
            
            stepper.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -20),
            stepper.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor),
            
            countLabel.trailingAnchor.constraint(equalTo: self.stepper.leadingAnchor, constant: -20),
            countLabel.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor)
        ])
    }

    @objc func stepperValueChanged(_ sender: UIStepper) {
        countLabel.text = Int(sender.value + 1).description
        let newValue = Int(sender.value + 1)
        stepperValueChanged?(newValue)
    }
}

