//
//  ViewController.swift
//  ViewControlerFromStoryBoard
//
//  Created by Atif Amin on 21/07/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .link
    }
    
    
    @IBAction func didTabButton(){
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "second") as? SecondViewController else{
            print("Faild")
            return
        }
        present(vc, animated: true)
            
                
    }

}

