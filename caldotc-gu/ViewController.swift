//
//  ViewController.swift
//  caldotc-gu
//
//  Created by Jaimin Raval on 30/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ioField: UITextField!
    
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
                if temp != "0" {
                    ioField.text = "\(temp)00"
                }
            }
        
        default:
            ioField.text = "0"
            
        }
    //  debug using this something like this:
//        print("button pressed: \(sender.titleLabel?.text!)")
    }
 
    @IBAction func operationPressed(_ sender: UIButton) {
        
        //  get tags using this line of code
        let operation = sender.tag
        
        switch operation {
        
        case 1:
            appendOperators(sign: "+")
        
        case 2:
            appendOperators(sign:"-")
            
       
        case 3:
            appendOperators(sign:"/")
            
        
        case 4:
            appendOperators(sign:"x")
            
        
        case 5:
            print("=")
            if let appendedStr = ioField.text {
                
                let partsArr = appendedStr.split(separator: "+")
                var ans = 0
                for n in partsArr {
                    if let num = Int(n) {
                        ans += num
                    }
                }
                print("seperated vals = \(partsArr)")
                print("ans = \(ans)")
                ioField.text = "\(ans)"
            }
        
        case 6:
            //  resets textfield
            ioField.text = "0"
        
        case 7:
            print("delete one char")
            if var appendedStr = ioField.text {
                if appendedStr != "" {
                    ioField.text = String(appendedStr.removeLast())
                }
            }
           
        default:
            print("default case called!")
            
        }
    }


    func appendOperators(sign operatorTapped: String) {
        
        if let temp = ioField.text {
            if temp != "0" {
                ioField.text = "\(temp)\(operatorTapped)"
            }
        }
    }
    
    
    
    //  func to setup UiElements once it get ready to appear:
//    func setupCalcUI() {
//        num0Btn.layer.cornerRadius = 24
//        num0Btn.layer.borderWidth = 0.3
//        num0Btn.layer.borderColor = UIColor.black.cgColor
//        num0Btn.clipsToBounds = true
//        
//    }

    
}
