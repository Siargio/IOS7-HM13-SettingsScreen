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
    case defaultCell
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
    var switchButton: Bool?
    var cellType: CellType
}

extension SetupSections {
    static var setupSections: [SetupSections] = [
        SetupSections(sectionsNumber: 0, setupsItem: [
        Setups(image: UIImage(systemName: "airplane")!, name: "Авиарежим", color: UIColor.systemOrange, cellType: .switchCell),
        Setups(image: UIImage(systemName: "wifi")!, name: "Wi-Fi", color: UIColor.systemBlue, cellType: .labelCell),
        Setups(image: UIImage(systemName: "wifi")!, name: "Bluetooth", color: UIColor.systemBlue, cellType: .labelCell),
        Setups(image: UIImage(systemName:"antenna.radiowaves.left.and.right")!, name: "Сотовая связь", color: UIColor.systemGreen, cellType: .defaultCell),
        Setups(image: UIImage(systemName: "personalhotspot")!, name: "Режим модема", color: UIColor.systemGreen, cellType: .defaultCell),
        Setups(image: UIImage(systemName: "wifi")!, name: "VPN", color: UIColor.systemBlue, cellType: .switchCell)]),

        SetupSections(sectionsNumber: 1, setupsItem: [
        Setups(image: UIImage(systemName: "bell.badge.fill")!, name: "Уведомления", color: UIColor.systemRed, cellType: .defaultCell) ,
        Setups(image: UIImage(systemName: "speaker.wave.3.fill")!, name: "Звуки, тактильные сигналы", color: UIColor.systemRed, cellType: .defaultCell),
        Setups(image: UIImage(systemName: "moon.fill")!, name: "Не беспокоить", color: UIColor.systemIndigo, cellType: .defaultCell),
        Setups(image: UIImage(systemName: "hourglass")!, name: "Экранное время", color: UIColor.systemIndigo, cellType: .defaultCell)]),

        SetupSections(sectionsNumber: 2, setupsItem: [
        Setups(image: UIImage(systemName: "gear")!, name: "Основные", color: UIColor.systemGray, cellType: .labelCell),
        Setups(image: UIImage(systemName: "switch.2")!, name: "Пункты управления", color: UIColor.systemGray, cellType: .defaultCell),
        Setups(image: UIImage(systemName: "textformat.size")!, name: "Экран и яркость", color: UIColor.systemBlue, cellType: .defaultCell),
        Setups(image: UIImage(systemName: "wifi")!, name: "Экран <<Домой>>", color: UIColor.blue, cellType: .defaultCell),
        Setups(image: UIImage(systemName: "moon.fill")!, name: "Универсальный доступ", color: UIColor.systemBlue, cellType: .defaultCell),
        Setups(image: UIImage(systemName: "airplane")!, name: "Обои", color: UIColor.systemBlue, cellType: .defaultCell),
        Setups(image: UIImage(systemName: "moon.fill")!, name: "Siri и Поиск", color: UIColor.black, cellType: .defaultCell),
        Setups(image: UIImage(systemName: "faceid")!, name: "Face ID и код-пароль", color: UIColor.systemGreen, cellType: .defaultCell),
        Setups(image: UIImage(systemName: "moon.fill")!, name: "Экстренный вызов - SOS", color: UIColor.systemRed, cellType: .defaultCell),
        Setups(image: UIImage(systemName: "wifi")!, name: "Уведомление о контакте", color: UIColor.systemRed, cellType: .defaultCell),
        Setups(image: UIImage(systemName: "battery.100")!, name: "Аккумулятор", color: UIColor.systemGreen, cellType: .defaultCell),
        Setups(image: UIImage(systemName: "hand.raised.fill")!, name: "Конфиденциальность", color: UIColor.systemBlue, cellType: .defaultCell)])
        ]
}

//extension Setups {
//    static var setups: [[Setups]] = [
//        [Setups(image: UIImage(systemName: "airplane")!, name: "Авиарежим", color: UIColor.systemOrange)],
//        [Setups(image: UIImage(systemName: "wifi")!, name: "Wi-Fi", color: UIColor.systemBlue)],
//        [Setups(image: UIImage(systemName: "wifi")!, name: "Bluetooth", color: UIColor.systemBlue)],
//        [Setups(image: UIImage(systemName: "antenna.radiowaves.left.and.right")!, name: "Сотовая связь", color: UIColor.systemGreen)],
//        [Setups(image: UIImage(systemName: "personalhotspot")!, name: "Режим модема", color: UIColor.systemGreen)],
//        [Setups(image: UIImage(systemName: "wifi")!, name: "VPN", color: UIColor.systemBlue)]
//    ]
//
//    static var setups2: [[Setups]] = [
//        [Setups(image: UIImage(systemName: "bell.badge.fill")!, name: "Уведомления", color: UIColor.systemRed)],
//        [Setups(image: UIImage(systemName: "speaker.wave.3.fill")!, name: "Звуки, тактильные сигналы", color: UIColor.systemRed)],
//        [Setups(image: UIImage(systemName: "moon.fill")!, name: "Не беспокоить", color: UIColor.systemIndigo)],
//        [Setups(image: UIImage(systemName: "hourglass")!, name: "Экранное время", color: UIColor.systemIndigo)]
//    ]
//
//    static var setups3: [[Setups]] = [
//        [Setups(image: UIImage(systemName: "gear")!, name: "Основные", color: UIColor.systemGray)],
//        [Setups(image: UIImage(systemName: "switch.2")!, name: "Пункты управления", color: UIColor.systemGray)],
//        [Setups(image: UIImage(systemName: "textformat.size")!, name: "Экран и яркость", color: UIColor.systemBlue)],
//        [Setups(image: UIImage(systemName: "wifi")!, name: "Экран <<Домой>>", color: UIColor.blue)],
//        [Setups(image: UIImage(systemName: "moon.fill")!, name: "Универсальный доступ", color: UIColor.systemBlue)],
//        [Setups(image: UIImage(systemName: "airplane")!, name: "Обои", color: UIColor.systemBlue)],
//        [Setups(image: UIImage(systemName: "moon.fill")!, name: "Siri и Поиск", color: UIColor.black)],
//        [Setups(image: UIImage(systemName: "faceid")!, name: "Face ID и код-пароль", color: UIColor.systemGreen)],
//        [Setups(image: UIImage(systemName: "moon.fill")!, name: "Экстренный вызов - SOS", color: UIColor.systemRed)],
//        [Setups(image: UIImage(systemName: "wifi")!, name: "Уведомление о контакте", color: UIColor.systemRed)],
//        [Setups(image: UIImage(systemName: "battery.100")!, name: "Аккумулятор", color: UIColor.systemGreen)],
//        [Setups(image: UIImage(systemName: "hand.raised.fill")!, name: "Конфиденциальность", color: UIColor.systemBlue)]
//    ]

