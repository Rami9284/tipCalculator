//
//  ViewController.swift
//  tip
//
//  Created by Judith Ramirez Cortez on 1/23/19.
//  Copyright © 2019 Judith Ramirez Cortez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tiplabel: UILabel!
    
    @IBOutlet weak var totlabel: UILabel!
    
    @IBOutlet weak var tipValue: UISegmentedControl!
    
    @IBOutlet weak var billField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculatorTip(_ sender: Any) {
        //get bill amt
        let bill = Double(billField.text!) ?? 0
        //calc tip & tot
        let tipPercentages = [0.15,0.18,0.2]
        let tip = bill * tipPercentages[tipValue.selectedSegmentIndex]
        let total = bill + tip
        //update tip & tot labels
        
        tiplabel.text = String(format: "$%.2f",tip)
        totlabel.text = String(format: "$%.2f",total)
    }
    
    
}

