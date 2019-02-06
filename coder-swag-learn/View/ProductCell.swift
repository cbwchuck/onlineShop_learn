//
//  Product.swift
//  coder-swag-learn
//
//  Created by Chuck on 2018/5/7.
//  Copyright © 2018年 Chuck. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!

    func updateProduct (withProduct product: Product) {
        productImage.image = UIImage(named: product.imageName)
        productName.text = product.productName
        productPrice.text = product.price
    }

}
