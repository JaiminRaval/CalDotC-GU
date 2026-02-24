//
//  HomeVC.swift
//  caldotc-gu
//
//  Created by Jaimin Raval on 24/02/26.
//

import UIKit

class HomeVC: UIViewController {

    var senderValue = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var calcVC = segue.destination as? CalculateVC
        calcVC?.btnPressedID = senderValue

    }
    
    func goToSegue(){
        performSegue(withIdentifier: "GoToCalculateVC", sender: self)
    }

    //MARK: - add
    @IBAction func addBtnTapped(_ sender: UIButton) {
        senderValue = sender.titleLabel?.text ?? ""

        goToSegue()
        print(sender.titleLabel?.text ?? "")
    }
    @IBAction func subBtnTapped(_ sender: UIButton) {
        senderValue = sender.titleLabel?.text ?? ""

        goToSegue()

        print(sender.titleLabel?.text ?? "")

    }
    @IBAction func multiBtnTapped(_ sender: UIButton) {
        senderValue = sender.titleLabel?.text ?? ""

        goToSegue()
        print(sender.titleLabel?.text ?? "")

    }
    @IBAction func divBtnTapped(_ sender: UIButton) {
        senderValue = sender.titleLabel?.text ?? ""

        goToSegue()
        print(sender.titleLabel?.text ?? "")

    }

}

