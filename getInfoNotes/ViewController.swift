//
//  ViewController.swift
//  getInfoNotes
//
//  Created by Avery McAllister on 8/29/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    
    @IBOutlet weak var textFieldOutput: UITextField!
    
    
    @IBOutlet weak var textFieldOutlet: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func submitAction(_ sender: UIButton) {
        var name = textFieldOutput.text!
        var age = Int(textFieldOutlet.text!)
        if let a = age{
            var age10 = a + 10
            labelOutlet.text = "Hello \(name), you are \(age) years old"
        }
        else{
            labelOutlet.text = "failure"
            
        }
        
    }
    
}
