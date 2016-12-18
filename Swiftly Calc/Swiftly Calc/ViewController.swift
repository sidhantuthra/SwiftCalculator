//
//  ViewController.swift
//  Swiftly Calc
//
//  Created by Sidhant Uthra on 12/17/16.
//  Copyright © 2016 Sidhant Uthra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lblResult: UILabel!

    var result = Float()
    var currentNumber = Float()
    var currentOp = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        currentOp = "="
        lblResult.text = ("\(result)")
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnNumberInput(_ sender: UIButton) {
    
        currentNumber = currentNumber * 10 + Float(Int(sender.titleLabel!.text!)!)
        lblResult.text = ("\(currentNumber)")
    
    }
 
    @IBAction func btnOperation(_ sender: UIButton) {
    
        switch currentOp {
            case "=":
                result = currentNumber
            case "+":
                result = result + currentNumber
            case "-":
                result = result - currentNumber
            case "x":
                result = result * currentNumber
            case "/":
                result = result / currentNumber
        default:
            print("Error")
        }
        
        currentNumber = 0
        lblResult.text = ("\(result)")
        
        if (sender.titleLabel!.text == "="){
            result = 0
        }
        
        currentOp = sender.titleLabel!.text! as String!
        
    }
        
    @IBAction func btnClear(_ sender: UIButton) {
        
        result = 0
        currentNumber = 0
        currentOp = "="
        lblResult.text = ("\(result)")
    }
}
