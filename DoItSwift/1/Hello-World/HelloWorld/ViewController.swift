//
//  ViewController.swift
//  HelloWorld
//
//  Created by 정은채 on 2021/04/07.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lblHello: UILabel!
    
    @IBOutlet var txtName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSend(_ sender: UIButton) {
        lblHello.text = "Hello, " + txtName.text!
    }
    
}

