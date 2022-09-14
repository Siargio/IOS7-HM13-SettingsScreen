//
//  DetailViewController.swift
//  IOS7-HM13-SettingsScreen
//
//  Created by Sergio on 26.08.22.
//

import UIKit

final class DetailViewController: UIViewController {
    
    var contents: Setups?
    
    private var detailView: DetailView? {
        guard isViewLoaded else { return nil }
        return view as? DetailView
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.tintColor = .black // меняет цвет слева сверху
        view = DetailView()
        configureView()
    }
    
    // MARK: - Configuration
    
    func configureView() {
        guard let models = contents else { return }
        detailView?.configuration(data: models)
    }
}
