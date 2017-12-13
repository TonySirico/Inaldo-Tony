//
//  SignupViewController.swift
//  Inaldo&Tony
//
//  Created by Davide Cifariello on 13/12/17.
//  Copyright © 2017 Antonio Sirica. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var badgeTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //picker
        datePicker.setValue(UIColor.white, forKeyPath: "textColor")
        
        
        
        //editing the text field
        nameTextField.attributedPlaceholder = NSAttributedString(string: "Name", attributes: [NSAttributedStringKey.foregroundColor: UIColor(red:0.56, green:0.56, blue:0.58, alpha:1.0)])
        nameTextField.backgroundColor = UIColor(red:0.07, green:0.07, blue:0.07, alpha:1.0)
        nameTextField.tintColor = UIColor(red:0.48, green:0.73, blue:0.84, alpha:1.0)
        nameTextField.textColor = UIColor.white
        
        surnameTextField.attributedPlaceholder = NSAttributedString(string: "Surname", attributes: [NSAttributedStringKey.foregroundColor: UIColor(red:0.56, green:0.56, blue:0.58, alpha:1.0)])
        surnameTextField.backgroundColor = UIColor(red:0.07, green:0.07, blue:0.07, alpha:1.0)
        surnameTextField.tintColor = UIColor(red:0.48, green:0.73, blue:0.84, alpha:1.0)
        surnameTextField.textColor = UIColor.white
        
        emailTextField.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedStringKey.foregroundColor: UIColor(red:0.56, green:0.56, blue:0.58, alpha:1.0)])
        emailTextField.backgroundColor = UIColor(red:0.07, green:0.07, blue:0.07, alpha:1.0)
        emailTextField.tintColor = UIColor(red:0.48, green:0.73, blue:0.84, alpha:1.0)
        emailTextField.textColor = UIColor.white
        
        badgeTextField.attributedPlaceholder = NSAttributedString(string: "Badge Number", attributes: [NSAttributedStringKey.foregroundColor: UIColor(red:0.56, green:0.56, blue:0.58, alpha:1.0)])
        badgeTextField.backgroundColor = UIColor(red:0.07, green:0.07, blue:0.07, alpha:1.0)
        badgeTextField.tintColor = UIColor(red:0.48, green:0.73, blue:0.84, alpha:1.0)
        badgeTextField.textColor = UIColor.white
        
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedStringKey.foregroundColor: UIColor(red:0.56, green:0.56, blue:0.58, alpha:1.0)])
        passwordTextField.backgroundColor = UIColor(red:0.07, green:0.07, blue:0.07, alpha:1.0)
        passwordTextField.tintColor = UIColor(red:0.48, green:0.73, blue:0.84, alpha:1.0)
        passwordTextField.textColor = UIColor.white
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
        self.navigationController?.isNavigationBarHidden = false
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
