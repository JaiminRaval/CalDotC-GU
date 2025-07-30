//
//  ViewController.swift
//  caldotc-gu
//
//  Created by Jaimin Raval on 30/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ioField: UITextField!
    
    @IBOutlet weak var num0Btn: UIButton!
    @IBOutlet weak var num1Btn: UIButton!
    @IBOutlet weak var num2Btn: UIButton!
    @IBOutlet weak var num3Btn: UIButton!
    @IBOutlet weak var num4Btn: UIButton!
    @IBOutlet weak var num5Btn: UIButton!
    @IBOutlet weak var num6Btn: UIButton!
    @IBOutlet weak var num7Btn: UIButton!
    @IBOutlet weak var num8Btn: UIButton!
    @IBOutlet weak var num9Btn: UIButton!
    @IBOutlet weak var num00Btn: UIButton!
    
    @IBOutlet weak var deleteBtn: UIButton!
    @IBOutlet weak var equalsBtn: UIButton!
    @IBOutlet weak var clearBtn: UIButton!
    
    @IBOutlet weak var plusBtn: UIButton!
    @IBOutlet weak var minusBtn: UIButton!
    @IBOutlet weak var divideBtn: UIButton!
    @IBOutlet weak var multiplyBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupCalcUI()
    }

    
    func setupCalcUI() {
        
        num0Btn.layer.cornerRadius = 55
        num0Btn.layer.borderWidth = 1.8
        num0Btn.layer.borderColor = UIColor.systemPink.cgColor
        num0Btn.clipsToBounds = true
        
        
    }
    


}

