//
//  CalculateVC.swift
//  caldotc-gu
//
//  Created by Jaimin Raval on 24/02/26.
//

import UIKit

class CalculateVC: UIViewController {

    var btnPressedID: String = ""
    
    @IBOutlet weak var inputOne: UITextField!
    @IBOutlet weak var inputTwo: UITextField!
    @IBOutlet weak var outputLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if !btnPressedID.isEmpty {
            print("sended: \(btnPressedID)")
            setDynamicTitle()
        }
        
    }
    
    func setDynamicTitle() {
        
        switch btnPressedID {
        
        case "+":
            navigationItem.title = "Addition"
        
        case "-":
            navigationItem.title = "Substraction"
        
        case "x":
            navigationItem.title = "Multiplication"
        
        case "/":
            navigationItem.title = "Division"
        
        default:
            navigationItem.title = "nothing"
        }
    }
    
    
    func handleCalculations(n0: Int, n1: Int) -> Int {
        var res = 0
        if btnPressedID == "+" {
            res = n0 + n1
        } else if btnPressedID == "-" {
            res = n0 - n1
        } else if btnPressedID == "x" {
            res = n0 * n1
        } else if btnPressedID == "/" {
            if n0 != 0 || n1 != 0 {
                res = n0 / n1
            }
        }
        return res
    }
    
    
    @IBAction func calculateBtnPressed(_ sender: UIButton) {
        if (inputOne.text != "" && inputTwo.text != ""){
            let a = Int(inputOne.text!) ?? 0
            let b = Int(inputTwo.text!) ?? 0
            let c = handleCalculations(n0: a, n1: b)
            
            outputLbl.text = "\(c)"
        }
    }
    

}
