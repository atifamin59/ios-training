//
//  ViewController.swift
//  GoodEatens
//
//  Created by Atif Amin on 01/08/2022.
//

import UIKit

class HomeVc: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    

    @IBOutlet weak var tableView: UITableView!
    
    let data = Data()
    var selectedCatgory : String!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as? CategoryCell{
            cell.configureCell(category: data.categories[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.categories.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       selectedCatgory = data.categories[indexPath.row].title
        performSegue(withIdentifier: "toRecipiesSelection", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let recipesCv = segue.destination as? RecipieSelectionVc{
            recipesCv.selectedCategory = selectedCatgory
        }
    }
    
}

