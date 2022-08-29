//
//  Extensions.swift
//  IOS7-HM13-SettingsScreen
//
//  Created by Sergio on 25.08.22.
//

import UIKit

enum CellType {
    case switchCell
    case labelCell
    case baseCell
}

struct SetupSections {
    var sectionsNumber: Int
    var setupsItem: [Setups]
}

struct Setups {
    var image: UIImage
    var name: String
    var color: UIColor
    var labelRight: String?
    var imageRight: UIImage?
    var cellType: CellType
}

extension SetupSections {
    static var setupSections: [SetupSections] = [
        SetupSections(sectionsNumber: 0, setupsItem: [
        Setups(image: UIImage(systemName: "airplane")!, name: "Авиарежим", color: .systemOrange, cellType: .switchCell),
        Setups(image: UIImage(systemName: "wifi")!, name: "Wi-Fi", color: .systemBlue, labelRight: "Не подключено", cellType: .labelCell),
        Setups(image: UIImage(named: "bluetooth")!, name: "Bluetooth", color: .systemBlue, labelRight: "Вкл.", cellType: .labelCell),
        Setups(image: UIImage(systemName:"antenna.radiowaves.left.and.right")!, name: "Сотовая связь", color: .systemGreen, cellType: .baseCell),
        Setups(image: UIImage(systemName: "personalhotspot")!, name: "Режим модема", color: .systemGreen, cellType: .baseCell),
        Setups(image: UIImage(named: "vpn")!, name: "VPN", color: .systemBlue, cellType: .switchCell)]),

        SetupSections(sectionsNumber: 1, setupsItem: [
        Setups(image: UIImage(systemName: "bell.badge.fill")!, name: "Уведомления", color: .systemRed, cellType: .baseCell) ,
        Setups(image: UIImage(systemName: "speaker.wave.3.fill")!, name: "Звуки, тактильные сигналы", color: .systemRed, cellType: .baseCell),
        Setups(image: UIImage(systemName: "moon.fill")!, name: "Не беспокоить", color: .systemIndigo, cellType: .baseCell),
        Setups(image: UIImage(systemName: "hourglass")!, name: "Экранное время", color: .systemIndigo, cellType: .baseCell)]),

        SetupSections(sectionsNumber: 2, setupsItem: [
        Setups(image: UIImage(systemName: "gear")!, name: "Основные", color: .systemGray, imageRight: UIImage(systemName: "1.circle.fill"), cellType: .labelCell),
        Setups(image: UIImage(systemName: "switch.2")!, name: "Пункты управления", color: .systemGray, cellType: .baseCell),
        Setups(image: UIImage(systemName: "textformat.size")!, name: "Экран и яркость", color: .systemBlue, cellType: .baseCell),
        Setups(image: UIImage(systemName: "square.grid.3x3.square")!, name: "Экран «Домой»", color: .systemBlue, cellType: .baseCell),
        Setups(image: UIImage(named: "accessibility")!, name: "Универсальный доступ", color: UIColor.systemBlue, cellType: .baseCell),
        Setups(image: UIImage(systemName: "circle.hexagongrid.circle")!, name: "Обои", color: UIColor.systemBlue, cellType: .baseCell),
        Setups(image: UIImage(systemName: "globe.asia.australia.fill")!, name: "Siri и Поиск", color: UIColor.systemPurple, cellType: .baseCell),
        Setups(image: UIImage(systemName: "faceid")!, name: "Face ID и код-пароль", color: .systemGreen, cellType: .baseCell),
        Setups(image: UIImage(named: "sos")!, name: "Экстренный вызов - SOS", color: UIColor.systemRed, cellType: .baseCell),
        Setups(image: UIImage(named: "wallpapers")!, name: "Уведомление о контакте", color: UIColor.systemRed, cellType: .baseCell),
        Setups(image: UIImage(systemName: "battery.100")!, name: "Аккумулятор", color: .systemGreen, cellType: .baseCell),
        Setups(image: UIImage(systemName: "hand.raised.fill")!, name: "Конфиденциальность", color: .systemBlue, cellType: .baseCell)])
        ]
}
