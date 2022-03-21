//
//  ViewController.swift
//  Login-1
//
//  Created by Cihan Çallı on 21.03.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let d = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let un = d.string(forKey: "username") ?? "Empty"
        let ps = d.string(forKey: "password") ?? "Empty"
        
        if un != "Empty" && ps != "Empty" {
            performSegue(withIdentifier: "loginToHome", sender: nil)
        }
        
    }
    @IBAction func didLoginButtonTapped(_ sender: Any) {
        
        if let un = userNameTextField.text , let ps = passwordTextField.text {
            if un == "admin" && ps == "123456" {
                
                d.set(un, forKey: "username")
                d.set(ps, forKey: "password")
                
                performSegue(withIdentifier: "loginToHome", sender: nil)
                
            }else {
                print("Hatalı Giriş")
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }

}

