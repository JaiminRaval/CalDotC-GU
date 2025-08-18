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
                var temp = appendedStr
                let lChar = temp.popLast()
                if appendedStr != "" && lChar != "+" && lChar != "-" && lChar != "/" && lChar != "x" && lChar != " " {
                    
                    let ans = calculateOnOperations(str: appendedStr)
                    ioField.text = "\(ans)"

                }
            }
        
        case 6:
            //  resets textfield
            ioField.text = "0"
        
        case 7:
//            print("delete one char")
            if let appendedStr = ioField.text {
                if appendedStr != "" {
                    let updatedStr = String(appendedStr.dropLast())
//                    print("Last char = \(updatedStr)")
                    ioField.text = updatedStr
                }
            }
           
        default:
            print("default case called!")
            
        }
    }
    
    //  this func gets called when you press '=' button in calc
    func calculateOnOperations(str inputStr: String) -> Double {
        // seperating operators and storing in arr
        var parts = inputStr.components(separatedBy: CharacterSet(charactersIn: "+-*/"))
        var operators: [Character] = []
            
        // get all operators
        for char in inputStr {
            if "+-*/".contains(char) {
                operators.append(char)
            }
        }

        
        // converting string numbers to Double
        var numbers = parts.compactMap { Double($0) }
        
        // Step 1: Do * and / first
        var i = 0
        while i < operators.count {
            if operators[i] == "*" {
                numbers[i] = numbers[i] * numbers[i + 1]
                numbers.remove(at: i + 1)
                operators.remove(at: i)
            } else if operators[i] == "/" {
                numbers[i] = numbers[i] / numbers[i + 1]
                numbers.remove(at: i + 1)
                operators.remove(at: i)
            } else {
                i += 1
            }
        }
        
        // Step 2: Do + and -
        i = 0
        while i < operators.count {
            if operators[i] == "+" {
                numbers[i] = numbers[i] + numbers[i + 1]
            } else {
                numbers[i] = numbers[i] - numbers[i + 1]
            }
            numbers.remove(at: i + 1)
            operators.remove(at: i)
        }
        
        let ans = numbers[0]
        return ans
        
    }


    func appendOperators(sign operatorTapped: String) {
        
        if let orgStr = ioField.text {
            var temp = orgStr
            let lChar = temp.popLast()
            if temp != "0" && lChar != "+" && lChar != "-" && lChar != "/" && lChar != "x" && lChar != " "{
                ioField.text = "\(orgStr)\(operatorTapped)"
            }
        }
    }
    
}
