//
//  ViewController.swift
//  SubwayKiosk
//
//  Created by CaliaPark on 4/1/24.
//

import UIKit

class ViewController: UIViewController {

    lazy var bottomView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        [tableView, buttonStackView, totalView].forEach { view.addSubview($0) }
        return view
    }()
    
    let cancelButton: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = #colorLiteral(red: 1, green: 0.7588691115, blue: 0.04935026914, alpha: 1)
        button.setTitle("취소하기", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button.addTarget(self, action: #selector(cancelButtonTapped), for: .touchUpInside)
        return button
    }()
    
    let payButton: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        button.setTitle("결제하기", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button.addTarget(self, action: #selector(payButtonTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var buttonStackView: UIStackView = {
        let stview = UIStackView(arrangedSubviews: [cancelButton, payButton])
        stview.spacing = 10
        stview.axis = .horizontal
        stview.distribution = .fillEqually
        stview.alignment = .fill
        return stview
    }()
    
    let totalCountLabel: UILabel = {
        let label = UILabel()
        label.text = "3개"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.frame.size.width = 100
        return label
    }()
    
    let totalLabel: UILabel = {
        let label = UILabel()
        label.text = "총 주문 가격"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.frame.size.width = 100
        return label
    }()
    
    let totalPriceLabel: UILabel = {
        let label = UILabel()
        label.text = "20,000원"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.frame.size.width = 100
        return label
    }()
    
    lazy var totalStackView: UIView = {
        let stview = UIStackView(arrangedSubviews: [totalCountLabel, totalLabel, totalPriceLabel])
        stview.axis = .horizontal
        stview.distribution = .equalCentering
        stview.alignment = .fill
        return stview
    }()
    
    lazy var totalView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.addSubview(totalStackView)
        return view
    }()
    
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(bottomView)
        setupTableView()
        setupLayout()
    }
    
    func setupTableView() {
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 120
        tableView.backgroundColor = .blue
        tableView.register(OrderTableViewCell.self, forCellReuseIdentifier: "OrderCell")
    
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 15),
            tableView.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 15),
            tableView.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -15),
            tableView.heightAnchor.constraint(equalToConstant: 140)
        ])
    }
    
    func setupLayout() {
        
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        totalView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            bottomView.heightAnchor.constraint(equalToConstant: 270),
            
            buttonStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            buttonStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            buttonStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            
            totalView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            totalView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            totalView.topAnchor.constraint(equalTo: tableView.bottomAnchor, constant: 5),
            totalView.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    @objc func cancelButtonTapped() {
        
    }
    
    @objc func payButtonTapped() {
        
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderCell", for: indexPath) as! OrderTableViewCell
//        cell.menuImageView.image = orderArray[indexPath.row].menuImage
//        cell.menuLabel.text = orderArray[indexPath.row].menuName
//        cell.optionLabel.text = orderArray[indexPath.row].menuOption
//        cell.selectionStyle = .none
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
