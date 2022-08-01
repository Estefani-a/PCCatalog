//
//  ViewController.swift
//  ChallengeGL
//
//  Created by Estefania Sassone on 07/07/2022.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func ContinueBtn(_ sender: Any) {
        _ = APICatalog.loadCatalogs().done { catalog in
            let homeVC = CatalogTableViewController()
            homeVC.catalogData = catalog
            let home = UINavigationController(rootViewController: homeVC)
            home.modalPresentationStyle = .fullScreen
            self.present(home, animated: true)
            //
        }
    }


}

