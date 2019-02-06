//
//  Product.swift
//  coder-swag-learn
//
//  Created by Chuck on 2018/5/8.
//  Copyright © 2018年 Chuck. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var imageName: String!
    private(set) public var productName: String!
    private(set) public var price: String!
    
    init(imageName: String, productName: String, price: String) {
        self.imageName = imageName
        self.productName = productName
        self.price = price
    }
}
