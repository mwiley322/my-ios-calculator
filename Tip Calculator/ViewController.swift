//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Megan Wiley on 4/17/17.
//  Copyright © 2017 Megan Wiley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let image : UIImage = UIImage(named: "roz")!
        self.myImageView.image = image
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("hi I am appearing")
    }
    
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var myImageView: UIImageView!
    

    @IBAction func calculateTip(_ sender: Any) {
        let billAmountString = billAmountTextField.text ?? "default val"
        let billAmount = Double(billAmountString) ?? 0
        let tipAmount = billAmount * 0.15
        let totalAmount = tipAmount + billAmount
        tipAmountLabel.text = "$\(tipAmount)"
        totalAmountLabel.text = "$\(totalAmount)"
        view.endEditing(true)
    }

}

