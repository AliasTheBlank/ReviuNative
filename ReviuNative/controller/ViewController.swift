//
//  ViewController.swift
//  ReviuNative
//
//  Created by Francisco Vargas on 12/13/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func LogInTouchUpInside(_ sender: Any) {
        self.performSegue(withIdentifier: "toFeedVC", sender: nil)
    }
}

