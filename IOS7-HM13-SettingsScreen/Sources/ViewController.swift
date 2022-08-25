//
//  ViewController.swift
//  IOS7-HM13-SettingsScreen
//
//  Created by Sergio on 25.08.22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    private var setups: [[Setups]]?
    
//     var namesSetup = ["Авиарежим",
//                       "Wi-Fi",
//                       "Bluetooth",
//                       "Сотовая связь",
//                       "Режим модема",
//                       "VPN",
//                       "Уведомления",
//                       "Звуки, тактильные сигналы",
//                       "Не беспокоить",
//                       "Экранное время",
//                       "Основные",
//                       "Пункты управления",
//                       "Экран и яркость",
//                       "Экран <<Домой>>",
//                       "Универсальный доступ",
//                       "Обои",
//                       "Siri и Поиск",
//                       "Face ID и код-пароль",
//                       "Экстренный вызов - SOS",
//                       "Уведомление о контакте",
//                       "Аккумулятор",
//                       "Конфиденциальность"]
//
//    var images = ["airplane",
//                  "wifi",
//                  "wifi",
//                  "antenna.radiowaves.left.and.right",
//                  "personalhotspot",
//                  "wifi",
//                  "bell.badge.fill",
//                  "speaker.wave.3.fill",
//                  "moon.fill",
//                  "hourglass",
//                  "gear",
//                  "switch.2",
//                  "textformat.size",
//                  "wifi",
//                  "moon.fill",
//                  "wifi",
//                  "moon.fill",
//                  "faceid",
//                  "moon.fill",
//                  "wifi",
//                  "battery.100",
//                  "hand.raised.fill",]
//
//    var colors = ["", ""]

    // MARK: - Outlets

    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        return tableView
    } ()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Настройки"
        //navigationController?.navigationBar.prefersLargeTitles = true
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setup

    private func setupHierarchy() {
        view.addSubview(tableView)
    }

    private func setupLayout() {
        tableView.snp.makeConstraints {
            $0.top.right.bottom.left.equalTo(view)
//            $0.trailing.bottom.leading.equalToSuperview()
//            $0.top.equalTo(view.safeAreaLayoutGuide).offset(0)
        }
    }
}

