//
//  CatalogTableViewCell.swift
//  ChallengeGL
//
//  Created by Estefania Sassone on 07/07/2022.
//

import UIKit

class CatalogTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgCatalog: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
