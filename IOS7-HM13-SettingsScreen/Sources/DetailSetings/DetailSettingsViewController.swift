//
//  DetailViewController.swift
//  IOS7-HM13-SettingsScreen
//
//  Created by Sergio on 26.08.22.
//

import UIKit

class DetailViewController: UIViewController {

    // MARK: - Elements
    
    private lazy var label: UILabel = {
        label = UILabel()
        label.text = "ПУСТО"
        label.font = .systemFont(ofSize: 62)
        label.textColor = .black
        return label
    }()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Sorry :("
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setup

    private func setupHierarchy() {
        view.addSubview(label)
    }

    private func setupLayout() {
        label.snp.makeConstraints {
            $0.centerY.equalTo(view)
            $0.leading.equalTo(110)
            $0.width.equalTo(200)
            $0.height.equalTo(110)
        }
    }
}
