//
//  ProductVC.swift
//  coder-swag-learn
//
//  Created by Chuck on 2018/5/8.
//  Copyright © 2018年 Chuck. All rights reserved.
//

import UIKit

class ProductVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var productCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productCollection.delegate = self
        productCollection.dataSource = self
    }
    
    private(set) public var products = [Product]()//建立空数组是为了防止nil使得crash
    
    func initProduct(category: Category) {
        products = DataService.instance.getProducts(of: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let collectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as? ProductCell{
            let product = products[indexPath.row]
            collectionCell.updateProduct(withProduct: product)
            return collectionCell
        }
        return ProductCell()
    }

    
    
    
    
    
    
    
    
}
