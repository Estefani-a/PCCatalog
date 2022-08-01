//
//  ChallengeGLDetailsViewController.swift
//  ChallengeGL
//
//  Created by Estefania Sassone on 08/07/2022.
//

import UIKit

class ChallengeGLDetailsViewController: UIViewController {

    @IBOutlet private weak var lblTitle: UILabel!
    @IBOutlet private weak var lblDescription: UILabel!
    @IBOutlet private weak var imgCatalog: UIImageView!
    
    
    var catalog: Catalog?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpView()
    }
    
    func setUpView(){
        
        lblTitle.text = catalog?.title
        lblDescription.text = catalog?.catalogoDescription
        imgCatalog.loadFrom(url: catalog!.image)
    }

}
