//
//  ViewController.swift
//  IOS7-HM13-SettingsScreen
//
//  Created by Sergio on 25.08.22.
//

import UIKit

final class SettingsViewController: UIViewController  {

    var data = SetupSections.setupSections

    private var settingsTableView: SettingsTableView? {
        guard isViewLoaded else { return nil }
        return view as? SettingsTableView
    }

    override func loadView() {
        view = SettingsTableView()
    }

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true //лейбел
        settingsTableView?.tableView.dataSource = self
        settingsTableView?.tableView.delegate = self
    }
}

// MARK: - UITableViewDataSource, UITableViewDelegate

extension SettingsViewController: UITableViewDataSource, UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].setupsItem.count //количество ячеек указывает, считает
    }

    func universalСell<T: UITableViewCell>(cell: T,
                                           accessoryType: UITableViewCell.AccessoryType,
                                           _ indexPath: IndexPath,
                                           _ tableView: UITableView) -> T {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(T.self)", for: indexPath) as? T
        else { return UITableViewCell() as? T ?? cell}
        return cell
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cellData = data[indexPath.section].setupsItem[indexPath.row]

        switch cellData.cellType {
        case .baseCell:
            let cell = universalСell(cell: BaseCell(), accessoryType: .disclosureIndicator, indexPath, tableView)
            cell.configuration(data: cellData)
            cell.accessoryType = .disclosureIndicator
            return cell
        case .switchCell:
            let cell = universalСell(cell: SwitchCell(), accessoryType: .disclosureIndicator, indexPath, tableView)
            cell.configuration(data: cellData)
            cell.selectionStyle = .none //стиль выбора ячейки чтобы не клацалась
            return cell
        case .labelCell:
            let cell = universalСell(cell: LabelCell(), accessoryType: .disclosureIndicator, indexPath, tableView)
            cell.configuration(data: cellData)
            cell.accessoryType = .disclosureIndicator // шеврон
            return cell
        case .searchCell:
            let cell = universalСell(cell: SearchCell(), accessoryType: .disclosureIndicator, indexPath, tableView)
            return cell
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if data[indexPath.section].setupsItem[indexPath.row].cellType != .switchCell { // условия для нажатия по ячейке
            let viewController = DetailViewController()
            viewController.contents = data[indexPath.section].setupsItem[indexPath.row]
            navigationController?.pushViewController(viewController, animated: true)
            print("\(viewController.contents?.name ?? "")")
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
}
