//
//  ViewController.swift
//  Element Quiz v0.1
//
//  Created by Kornkanok Sangwichien on 12/11/2561 BE.
//  Copyright © 2561 Kornkanok Sangwichien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var ansLabel: UILabel!
    
    
    @IBAction func showAns(_ sender: Any) {
        ansLabel.text = elementList[currentElementIndex]
    }
    
    @IBAction func nextToElement(_ sender: Any) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
        }
        updateElement()
        
        
    }
    
    
    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    var currentElementIndex = 0
    
    func updateElement(){
        ansLabel.text = "?"
        imgView.image = UIImage(named: elementList[currentElementIndex])
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateElement()
    }


}

