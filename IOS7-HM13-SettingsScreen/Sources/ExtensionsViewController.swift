//
//  ExtensionsViewController.swift
//  IOS7-HM13-SettingsScreen
//
//  Created by Sergio on 25.08.22.
//

import UIKit

extension ViewController: UITableViewDataSource, UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        return setups?.count ?? 0
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return setups?[section].count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomViewController", for: indexPath) as? CustomViewController
        cell?.setup = setups?[indexPath.section][indexPath.row]
        cell?.accessoryType = .disclosureIndicator// справа значек
        return cell ?? UITableViewCell()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = DetailViewController()
        tableView.deselectRow(at: indexPath, animated: true)
        viewController.setups = setups?[indexPath.section][indexPath.row]
        navigationController?.pushViewController(viewController, animated: true)
    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let title = setups?[indexPath.section][indexPath.row].name
//        print("Выбрана ячейка \(String(describing: title))")
//        tableView.deselectRow(at: indexPath, animated: true)
//    }
}

