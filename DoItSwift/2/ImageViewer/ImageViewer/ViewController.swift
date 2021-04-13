//
//  ViewController.swift
//  ImageViewer
//
//  Created by 정은채 on 2021/04/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageViewer: UIImageView!
    @IBOutlet var btnBack: UIButton!
    @IBOutlet var btnNext: UIButton!
    
    var imageName: String = "1.jpeg"
    var num: Int = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageViewer.image = UIImage(named: imageName)
    }
    
    @IBAction func decreaseNum(_ sender: UIButton) {
        if (num != 1) {
            num -= 1
        }
        
        imageName = String(num) + ".jpeg"
        imageViewer.image = UIImage(named: imageName)
    }
    
    @IBAction func increaseNum(_ sender: Any) {
        if (num != 3) {
            num += 1
        }
        
        imageName = String(num) + ".jpeg"
        imageViewer.image = UIImage(named: imageName)
    }
    



}

