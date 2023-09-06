//
//  ViewController.swift
//  getInfoNotes
//
//  Created by Avery McAllister on 8/29/23.
//

import UIKit

// comma starts adding protocal
class ViewController: UIViewController, UITextFieldDelegate {
    
    var test = 7
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    
    @IBOutlet weak var textFieldOutput: UITextField!
    
    
    @IBOutlet weak var textFieldOutlet: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // attaching delegate to text field
        textFieldOutput.delegate = self
        
        textFieldOutlet.delegate = self
    }
    
    
    
    @IBAction func submitAction(_ sender: UIButton) {
        // making the keyboard dissapear
        textFieldOutlet.resignFirstResponder()
        textFieldOutput.resignFirstResponder()
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
    // funtion is called when the return key on the software keyboard is hit
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
}
