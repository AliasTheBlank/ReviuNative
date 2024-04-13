//
//  ViewController.swift
//  ReviuNative
//
//  Created by Francisco Vargas on 12/13/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showPasswordButton: UIButton!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtUsername: UITextField!
    var iconClick = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(tapGesture)

        txtPassword.isSecureTextEntry = true
    }


    @IBAction func LogInTouchUpInside(_ sender: Any) {
        self.performSegue(withIdentifier: "toFeedVC", sender: nil)
    }
    
    @objc func hideKeyboard(_ sender : UITapGestureRecognizer) {
        
        if !txtUsername.frame.contains(sender.location(in: view)) {
            txtUsername.resignFirstResponder()
        }
        
        if !txtPassword.frame.contains(sender.location(in: view)) {
            txtPassword.resignFirstResponder()
        }
    }
    @IBAction func showPasswordTouchUpInside(_ sender: Any) {
        
        iconClick = !iconClick
        
        if iconClick {
            showPasswordButton.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        } else {
            showPasswordButton.setImage(UIImage(systemName: "eye"), for: .normal)
        }
        
        txtPassword.isSecureTextEntry = iconClick
    }
}

