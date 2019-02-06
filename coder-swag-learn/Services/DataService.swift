//
//  DataService.swift
//  coder-swag-learn
//
//  Created by Chuck on 2018/5/7.
//  Copyright © 2018年 Chuck. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService() //singleton
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(imageName: "hat01.png", productName: "hat01", price: "$20"),
        Product(imageName: "hat02.png", productName: "hat02", price: "$20"),
        Product(imageName: "hat03.png", productName: "hat03", price: "$20"),
        Product(imageName: "hat04.png", productName: "hat04", price: "$20")
    ]
    
    private let shirts = [
        Product(imageName: "shirt01.png", productName: "shirt01", price: "$30"),
        Product(imageName: "shirt02.png", productName: "shirt02", price: "$30"),
        Product(imageName: "shirt03.png", productName: "shirt03", price: "$30"),
        Product(imageName: "shirt04.png", productName: "shirt04", price: "$30")
    ]
    
    private let hoodies = [
        Product(imageName: "hoodie01.png", productName: "hoodie01", price: "$50"),
        Product(imageName: "hoodie02.png", productName: "hoodie02", price: "$50"),
        Product(imageName: "hoodie03.png", productName: "hoodie03", price: "$50"),
        Product(imageName: "hoodie04.png", productName: "hoodie04", price: "$50")
    ]
    
    private let digits = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(of categoryName: String) -> [Product] {
        switch categoryName {
        case "HATS":
            return getHats()
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigits()
        default:
            return getHats()
        }
    }
     
    func getHats() -> [Product] {
        return hats
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getDigits() -> [Product] {
        return digits
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
