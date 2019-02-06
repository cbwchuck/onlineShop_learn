//
//  CategoriesTableViewCell.swift
//  coder-swag-learn
//
//  Created by Chuck on 2018/5/7.
//  Copyright © 2018年 Chuck. All rights reserved.
//

import UIKit

class CategoriesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var textforCell: UILabel!

    func updateView(category: Category) {
        backgroundImage.image = UIImage(named: category.imageName)
        textforCell.text = category.title
    }
}
