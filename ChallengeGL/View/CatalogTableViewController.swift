//
//  CatalogTableViewController.swift
//  ChallengeGL
//
//  Created by Estefania Sassone on 07/07/2022.
//

import UIKit

class CatalogTableViewController: UITableViewController {
    
    let cellIdentifier = "CatalogTableViewCell"
    
    var catalogData: [Catalog] = [] {
        didSet {
            self.tableView.reloadData()
        }
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        
        tableView.register(UINib.init(nibName: "CatalogTableViewCell", bundle: nil), forCellReuseIdentifier: "CatalogTableViewCell")

    }
    
    func setUpView(){
        
        self.title = ""
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "BACK", style: .plain, target: self, action: #selector(back))
        
        self.navigationItem.leftBarButtonItem?.image = UIImage(systemName: "chevron.backward")

        self.clearsSelectionOnViewWillAppear = false

        let nib = UINib(nibName: "CatalogTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: cellIdentifier)
        
    }
    
    @objc func back(){
        dismiss(animated: true)
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return catalogData.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        guard catalogData.count > indexPath.row else { return }
        let catalog = catalogData[indexPath.row]
        let detailsVC = ChallengeGLDetailsViewController()
        detailsVC.catalog = catalog
        navigationController?.pushViewController(detailsVC, animated: true)
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard catalogData.count > indexPath.row,
              let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier,
                                                       for: indexPath) as? CatalogTableViewCell
        else { return UITableViewCell() }

        let catalog = catalogData[indexPath.row]
        
        cell.lblTitle.text = catalog.title
        cell.lblDescription.text = catalog.catalogoDescription
        cell.imgCatalog.loadFrom(url: catalog.image) 
        
        return cell
    }
    
}
