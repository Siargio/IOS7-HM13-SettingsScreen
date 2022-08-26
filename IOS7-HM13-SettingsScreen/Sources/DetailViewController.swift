//
//  DetailViewController.swift
//  IOS7-HM13-SettingsScreen
//
//  Created by Sergio on 26.08.22.
//

import UIKit

class DetailViewController: UIViewController {

    // MARK: - Outlets
    
    private lazy var label: UILabel = {
        label = UILabel()
        label.text = "ЛОХ"
        label.font = .systemFont(ofSize: 70)
        label.textColor = .red
        return label
    } ()

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
            $0.centerX.equalTo(view)
            $0.leading.equalTo(110)
            $0.width.height.equalTo(1100)
        }
    }
}
