//
//  Product.swift
//  CollectionScrollPage
//
//  Created by Macservis on 13/04/22.
//

import Foundation

class Product {
    var name: String? = ""
    var price: String? = ""
    var image: String? = ""
    
    init(name: String?,price: String?,image: String?) {
        self.name = name
        self.price = price
        self.image = image
    }
}
