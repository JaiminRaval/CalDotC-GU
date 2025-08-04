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

//        setupCalcUI()
    }
    
 
    
    
    
    func resetTextField() {
        if let input = ioField.text {
            if input == "0" {
                ioField.text = ""
            }
        }
    }
    
    
    
    @IBAction func numPressed(_ sender: UIButton) {
        guard let input = sender.titleLabel?.text else { return  }
        
        switch input {
            
        case "1":
            resetTextField()
            if let temp = ioField.text {
                ioField.text = "\(temp)1"

            }
            
        case "2":
            resetTextField()
            if let temp = ioField.text {
                ioField.text = "\(temp)2"
            }
        
        case "3":
            resetTextField()
            if let temp = ioField.text {
                ioField.text = "\(temp)3"
            }
        case "4":
            resetTextField()
            if let temp = ioField.text {
                ioField.text = "\(temp)4"
            }
        case "5":
            resetTextField()
            if let temp = ioField.text {
                ioField.text = "\(temp)5"
            }
        case "6":
            resetTextField()
            if let temp = ioField.text {
                ioField.text = "\(temp)6"
            }
        case "7":
            resetTextField()
            if let temp = ioField.text {
                ioField.text = "\(temp)7"
            }
        case "8":
            resetTextField()
            if let temp = ioField.text {
                ioField.text = "\(temp)8"
            }
        case "9":
            resetTextField()
            if let temp = ioField.text {
                ioField.text = "\(temp)9"
            }
        case "0":
            resetTextField()
            if let temp = ioField.text {
                ioField.text = "\(temp)0"
            }
        case "00":
            resetTextField()
            if let temp = ioField.text {
                ioField.text = "\(temp)00"
            }
        default:
            ioField.text = "0"
            
        }
    //  debug using this something like this:
//        print("button pressed: \(sender.titleLabel?.text!)")
        
        
        
    }
    
    
    
    
    
    @IBAction func operationPressed(_ sender: UIButton) {
        
        let operation = sender.tag
        
        switch operation {
        case 0:
            print("+")
            if let appendedStr = ioField.text {
                
            }
        case 1:
            print("-")
            if let appendedStr = ioField.text {

            }
        case 2:
            print("/")
            if let appendedStr = ioField.text {

            }
        case 3:
            print("x")
            if let appendedStr = ioField.text {

            }
        case 4:
            print("=")
            if let appendedStr = ioField.text {
                var partsArr = appendedStr.split(separator: "+")
                print("seperated vals = \(partsArr)")
            }
        case 5:
            print("C")
            if let appendedStr = ioField.text {

            }
        case 6:
            print("delete one char")
            if let appendedStr = ioField.text {

            }
           
        default:
            break
        }
        
    }


    
    
    
    
//    func setupCalcUI() {
//        num0Btn.layer.cornerRadius = 24
//        num0Btn.layer.borderWidth = 0.3
//        num0Btn.layer.borderColor = UIColor.black.cgColor
//        num0Btn.clipsToBounds = true
//        
//    }
    


}

