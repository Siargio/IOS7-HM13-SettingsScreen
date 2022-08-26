////
////  CustomViewController.swift
////  IOS7-HM13-SettingsScreen
////
////  Created by Sergio on 25.08.22.
////
//
//import UIKit
//
//class CustomViewController: UITableViewCell {
//
//    var setup: Setups? {
//        didSet {
//            image.image = setup?.image
//            name.text = setup?.name
//            colorView.backgroundColor = setup?.color
//            //labelRight.text = setup?.labelRight
//        }
//    }
//
//    // MARK: - Outlets
//
//    private let image: UIImageView = {
//        let image = UIImageView()
//        image.contentMode = .scaleAspectFit
//        image.tintColor = .white
//        return image
//    } ()
//
//    private let colorView: UIView = {
//        let colorView = UIView()
//        colorView.layer.masksToBounds = true
//        colorView.layer.cornerRadius = 6
//        colorView.backgroundColor = .red
//        return colorView
//    } ()
//
//    private let name: UILabel = {
//        let name = UILabel()
//        return name
//    } ()
//
//    private let labelRight: UILabel = {
//        let labelRight = UILabel()
//        labelRight.text = "Не подключено"
//        labelRight.textColor = .secondaryLabel
//        return labelRight
//    } ()
//
//    private let switchButton: UISwitch = {
//        let switchButton = UISwitch(frame: .zero)
//        switchButton.addTarget(CustomViewController.self, action: #selector(didChangeSwitch), for: .valueChanged)
//        return switchButton
//    } ()
////    private let stack: UIStackView = {
////        let stack = UIStackView()
////        stack.alignment = .leading
////        stack.axis = .vertical
////        stack.distribution = .fill
////        stack.spacing = 1
////        return stack
////    } ()
//    
//    // MARK: - Lifecycle
//
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        setupHierarchy()
//        setupLayout()
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    // MARK: - Setup
//
//    private func setupHierarchy() {
//        addSubview(colorView)
//        addSubview(image)
//        addSubview(name)
//        addSubview(labelRight)
//        addSubview(switchButton)
//
////        stack.addArrangedSubview(image)
////        stack.addArrangedSubview(name)
////        addSubview(stack)
//    }
//
//    private func setupLayout() {
//        image.snp.makeConstraints {
//            $0.leading.equalTo(24)
//            $0.centerY.equalToSuperview()
//            $0.height.equalTo(22)
//            $0.width.equalTo(21)
//        }
//
//        name.snp.makeConstraints {
//            //$0.leading.equalTo(60)
//            $0.leading.equalTo(image.snp.trailing).offset(20)
//            $0.centerY.equalTo(image.snp.centerY)
//        }
//
//        colorView.snp.makeConstraints {
//            $0.leading.equalTo(20)
//            $0.centerY.equalToSuperview()
//            $0.height.width.equalTo(30)
//        }
//
//        labelRight.snp.makeConstraints {
//            $0.centerY.equalTo(image.snp.centerY)
//            $0.trailing.equalTo(-35)
//            $0.height.equalTo(30)
//            $0.width.equalTo(140)
//        }
//
//        switchButton.snp.makeConstraints {
//            $0.centerY.equalTo(image.snp.centerY)
//            $0.height.width.equalTo(30)
//            $0.trailing.equalTo(-38)
//        }
////        //stack.snp.makeConstraints {
////            $0.centerY.centerY.equalToSuperview()
////        }
//    }
//
//    @objc func didChangeSwitch() {
//        print("On")
//    }
//
//    override func prepareForReuse() {
//        super.prepareForReuse()
//        self.accessoryType = .none
//        //self.setup = nil
//    }
//}
