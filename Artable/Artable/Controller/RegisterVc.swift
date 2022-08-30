//
//  RegisterVc.swift
//  Artable
//
//  Created by Atif Amin on 30/08/2022.
//

import UIKit
import FirebaseAuth

class RegisterVc: UIViewController {
    
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTtx: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var confirmPassTxt: UITextField!
    @IBOutlet weak var passImageCheck: UIImageView!
    @IBOutlet weak var confirmPassImageCheck: UIImageView!
    @IBOutlet weak var progressIndicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTxt.addTarget(self, action: #selector(textFiledDidChange(_:)), for: UIControl.Event.editingChanged)
        confirmPassTxt.addTarget(self, action: #selector(textFiledDidChange(_:)), for: UIControl.Event.editingChanged)
    }
    
    @objc func textFiledDidChange(_ textFiled: UITextField){
        guard let passTxt = passwordTxt.text else {return}
        
        if textFiled == confirmPassTxt {
            passImageCheck.isHidden = false
            confirmPassImageCheck.isHidden = false
        }else{
            if passTxt.isEmpty{
                passImageCheck.isHidden = true
                confirmPassImageCheck.isHidden = true
            }
        }
        
        // Make it when the passwords match, the checkmarks turn change to green
        if passwordTxt.text == confirmPassTxt.text{
            passImageCheck.image = UIImage(named: AppImages.GreenCheck)
            confirmPassImageCheck.image = UIImage(named: AppImages.GreenCheck)
        }else{
            passImageCheck.image = UIImage(named: AppImages.RedCheck)
            confirmPassImageCheck.image = UIImage(named: AppImages.RedCheck)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        handle = Auth.auth().addStateDidChangeListener { auth, user in
//
//        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
//        Auth.auth().removeStateDidChangeListener(handle!)
    }

    @IBAction func registerUser(_ sender: Any) {
        guard let email = emailTtx.text, email.isNotEmpty ,
              let username = usernameTxt.text, username.isNotEmpty,
              let password = passwordTxt.text, password.isNotEmpty else {return}
        
        progressIndicator.startAnimating()
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let error = error {
                debugPrint(error)
                return
            }
            self.progressIndicator.stopAnimating()
        }
    }
}
