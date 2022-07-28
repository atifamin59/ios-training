//
//  ViewController.swift
//  TableViewPractice
//
//  Created by Atif Amin on 26/07/2022.
//

import UIKit
var pokeMan = ["Pikacahu","Squirtle","Bulsoar","Mew","Charamdar"]

class ViewController: UIViewController{

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
}
extension UIViewController : UITableViewDelegate,UITableViewDataSource{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokeMan.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokeManCell", for: indexPath as IndexPath)
        cell.textLabel?.text = pokeMan[indexPath.row]
        return cell
    }
    
    
    
}

