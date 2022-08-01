//
//  ViewController.swift
//  Bingebot 1st examaple
//
//  Created by Atif Amin on 29/07/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var showsLabels: UILabel!
    @IBOutlet weak var randomShowLabel: UILabel!
    @IBOutlet weak var bingbotSpkenLabel: UILabel!
    @IBOutlet weak var addShowTextField: UITextField!
    @IBOutlet weak var addShowButton: UIButton!
    @IBOutlet weak var showsStackViews: UIStackView!
    @IBOutlet weak var addShowsStackViews: UIStackView!
    @IBOutlet weak var randomShowsStackViews: UIStackView!
    
    var shows : [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        randomShowsStackViews.isHidden = true
        showsStackViews.isHidden = true
        
    }
    
    @IBAction func showRandomText(_ sender: Any) {
        randomShowLabel.text = shows.randomElement()
        randomShowLabel.isHidden = false
        bingbotSpkenLabel.isHidden = false
    }
    func updateShowsLabels(){
        showsLabels.text = shows.joined(separator: ",")
    }
    
    @IBAction func addShowPressed(_ sender: Any) {
        guard let showName = addShowTextField.text else {return}
        if !showName.isEmpty{
            shows.append(showName)
            addShowTextField.text = ""
            updateShowsLabels()
            showsStackViews.isHidden = false
            
            if shows.count > 1{
                randomShowsStackViews.isHidden = false
                bingbotSpkenLabel.isHidden = true
                randomShowLabel.isHidden = true
                
            }
        }
        
    }
    
}

