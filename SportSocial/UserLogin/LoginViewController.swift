//
//  LoginViewController.swift
//  SportSocial
//
//  Created by elizabeth on 2/10/18.
//  Copyright © 2018 elizabeth. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    @IBAction func loginapped(_ sender: Any) {
          if let email = emailTextfield.text, let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password, completion: { user, error in
                if let firebaseError = error {
                    print(firebaseError.localizedDescription)
                    return
                }
                print("Success!")
            })
        }
    }
    
}
