//
//  ProductCollectionViewCell.swift
//  CollectionScrollPage
//
//  Created by Macservis on 13/04/22.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {

  static let identifier: String = "myCell"
    
    @IBOutlet weak var nmviewback: UIView!
    
    @IBOutlet weak var nmImageView: UIImageView!
    
    @IBOutlet weak var nmNameLabel: UILabel!
    
    @IBOutlet weak var nmPriceLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        nmImageView.translatesAutoresizingMaskIntoConstraints = false
        nmImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
       
        nmviewback.backgroundColor = UIColor(white: 0.3, alpha: 1)
    }

}
