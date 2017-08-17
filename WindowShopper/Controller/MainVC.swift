//
//  ViewController.swift
//  WindowShopper
//
//  Created by Tushar Katyal on 17/08/17.
//  Copyright © 2017 Tushar Katyal. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

 
    @IBOutlet weak var wagefield: CustomTextField!
    
    @IBOutlet weak var priceField: CustomTextField!
    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wagefield.inputAccessoryView = calcBtn
        priceField.inputAccessoryView = calcBtn
    }

    @objc func calculate(){
        
       
        if let wagefield = wagefield.text , let itemField = priceField.text {
            
            if let wage = Double(wagefield) , let price = Double(itemField) {
                
                let result = Wage.getHours(forWage: wage, andPrice: price)
                
                resultLbl.text = "\(result)"
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                view.endEditing(true)
            }
        }
        
        
    }

    @IBAction func clearCalBtn(_ sender: Any) {
        wagefield.text = ""
        priceField.text = ""
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    
}

