//
//  ViewControllerThree.swift
//  seguePractice
//
//  Created by Sumaiya Mohamed on 9/12/22.
//

import UIKit
var a = 0
var b = 0
class ViewControllerThree: UIViewController {


    
    
    @IBOutlet weak var lableZreo: UILabel!
    @IBOutlet weak var textArea: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        b = Int.random(in: 1...10)
        
    }
    

    @IBAction func addOne(_ sender: UIButton) {
        a += 1
        lableZreo.text = "\(a)"
        if a == b {
            textArea.text = "magic number"
        }else {
            textArea.text = "\(a) is not Number"
        }
    }
    
    @IBAction func subOne(_ sender: UIButton) {
        a -= 1
        lableZreo.text = "\(a)"
        if a == b {
            textArea.text = "magic number"
        }else{
            textArea.text = "\(a) is not number" 
        }
    }
    
   
    
}
