//
//  HomeViewController.swift
//  Login-1
//
//  Created by Cihan Çallı on 21.03.2022.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var pageUserNameTextField: UILabel!
    let d = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        let un = d.string(forKey: "username") ?? "Empty"
        pageUserNameTextField.text = un
    }
    @IBAction func didExitButtonTapped(_ sender: Any) {
        d.removeObject(forKey: "username")
        d.removeObject(forKey: "password")
        
        exit(-1)
    }
}
