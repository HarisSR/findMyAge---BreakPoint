//
//  ViewController.swift
//  findMyAge
//
//  Created by Haris Shobaruddin Roabbni on 07/05/19.
//  Copyright © 2019 Haris Shobaruddin Robbani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnFind: UIButton!
    @IBOutlet weak var txtResult: UILabel!
    @IBOutlet weak var txtYears: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func findAgeAction(_ sender: UIButton) {
        let yearOfBirth = Int(txtYears.text!)
        let date = Date()
        let calendar = Calendar.current
        let currentYear = calendar.component(.year, from: date)
        let currentAge = currentYear - yearOfBirth!
        txtResult.text = "Your age is \(currentAge) years"
        print(currentAge)
        
        
    }
    
}

