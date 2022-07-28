//
//  ViewController.swift
//  LoginScreen
//
//  Created by Atif Amin on 25/07/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func signn(_ sender: Any) {
        userField.layer.cornerRadius = 22
        passwordField.layer.cornerRadius = 22
        signBtn.layer.cornerRadius = 22
    }
    
}

