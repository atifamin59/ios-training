//
//  ViewController.swift
//  LoginUi
//
//  Created by Atif Amin on 26/07/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.backgroundColor = UIColor(red: 87/255, green: 159/255, blue: 251/255, alpha: 1).cgColor
        loginButton.layer.shadowOpacity = 1
        loginButton.layer.shadowOffset = CGSize.zero
        loginButton.layer.shadowColor = UIColor(red: 87/255, green: 159/255, blue: 251/255, alpha: 1).cgColor
        loginButton.layer.cornerRadius = 2.0
    }


}

