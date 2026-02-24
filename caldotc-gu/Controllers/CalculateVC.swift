//
//  CalculateVC.swift
//  caldotc-gu
//
//  Created by Jaimin Raval on 24/02/26.
//

import UIKit

class CalculateVC: UIViewController {

    var btnPressedID: String = ""
    
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

}
