//
//  MultplyVC.swift
//  caldotc-gu
//
//  Created by Jaimin Raval on 20/02/26.
//

import UIKit

class MultplyVC: UIViewController {

    
    @IBOutlet weak var textInput1: UITextField!
    @IBOutlet weak var textInput2: UITextField!
    @IBOutlet weak var TextOutput: UILabel!
    @IBOutlet weak var MultiplyBtn
    : UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Input1added(_ sender: UITextField) {
        
        
    }
    
    @IBAction func Input2added(_ sender: UITextField) {
        
        
    }
    
    @IBAction func MultiplyDidTapped(_ sender: UIButton) {
        guard let a = Int(textInput1.text!) else { return }
        var b = Int(textInput2.text!) ?? 0
        var c = a * b
        
    }

}
