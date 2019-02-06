//
//  ViewController.swift
//  coder-swag-learn
//
//  Created by Chuck on 2018/5/7.
//  Copyright © 2018年 Chuck. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var forTables: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //设置代理
        forTables.dataSource = self
        forTables.delegate = self
    }

    //return how many rows do you want to have in your table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    //which data to which cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoriesTableViewCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateView(category: category)
            return cell
        } else {
            return CategoriesTableViewCell()
        }
    }
    
    //knows when table view cell are selected
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "productSegue", sender: category)//相当于传递了category过去，在下面的函数中重新取得
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? ProductVC {
            let barButton = UIBarButtonItem()
            barButton.title = ""
            navigationItem.backBarButtonItem = barButton
            assert(sender as? Category != nil) //条件不满足时跳出
            productVC.initProduct(category: sender as! Category)
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

