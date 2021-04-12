//
//  ViewController.swift
//  MultiPickerView
//
//  Created by 정은채 on 2021/04/12.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let PICKER_VIEW_COLUMN = 2
    var imagesArray = [UIImage?]()
    var imageNames = ["Positano.jpeg", "Warszawa.jpeg", "London.jpeg", "Rome.jpg", "Valleta.jpg", "Malta.jpg", "Barcelona.jpg", "RussianBlue.jpeg","AmericanShorthairCat.jpg", "Collie.jpeg", "Corgi.jpg", "Retriever.jpeg", "Wawa.jpg"]

    @IBOutlet var travelPickerView: UIPickerView!
    @IBOutlet var name: UILabel!
    @IBOutlet var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        travelPickerView.delegate = self
        
        for i in 0 ..< imageNames.count {
            let image = UIImage(named: imageNames[i])
            imagesArray.append(image)
        }
        
        name.text = String(imageNames[0].split(separator: ".")[0])
        imageView.image = imagesArray[0]
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imagesArray.count
    }
    
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        let titleForRow = String(imageNames[row].split(separator: ".")[0])
//        return titleForRow
//    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(image: imagesArray[row])
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 125)
        return imageView
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        name.text = String(imageNames[row].split(separator: ".")[0])
        imageView.image = imagesArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100
    }
    
}

