//
//  ViewController.swift
//  PageContrlNumbers
//
//  Created by 정은채 on 2021/04/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var number: UILabel!
    @IBOutlet var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageControl.numberOfPages = 10
        pageControl.currentPage = 0
    }

    @IBAction func pageChange(_ sender: UIPageControl) {
        number.text = String(sender.currentPage)
    }
    
}

