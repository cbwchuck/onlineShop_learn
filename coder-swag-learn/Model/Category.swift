//
//  Category.swift
//  coder-swag-learn
//
//  Created by Chuck on 2018/5/7.
//  Copyright © 2018年 Chuck. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
