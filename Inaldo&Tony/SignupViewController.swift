//
//  SignupViewController.swift
//  Inaldo&Tony
//
//  Created by Davide Cifariello on 13/12/17.
//  Copyright © 2017 Antonio Sirica. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController, UITextFieldDelegate {
    
    let ourGreen = UIColor(red:0.31, green:0.82, blue:0.30, alpha:0.0)
    
    
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    
    //vars
    var coding = ""
    var design = ""
    var business = ""
    var language = ""
    var science = ""
    var other = ""
    var flag: String = ""

    
    //Hide keyboard when user taps anywhere
    @IBAction func tapToDismissKeyboard(_ sender: Any) {
        self.view.endEditing(true)
        
    }
    
    
    //outlets
    @IBOutlet weak var nameTextField: RoundedUITextField!
    @IBOutlet weak var surnameTextField: RoundedUITextField!
    @IBOutlet weak var emailTextField: RoundedUITextField!
    @IBOutlet weak var badgeTextField: RoundedUITextField!
    @IBOutlet weak var passwordTextField: RoundedUITextField!
    @IBOutlet weak var descriptionTextField: AlternativeRoundedUITextField!
    
    
    
    
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    @IBOutlet weak var codingButton: UIButton!
    @IBOutlet weak var designButton: UIButton!
    @IBOutlet weak var businessButton: UIButton!
    @IBOutlet weak var languageButton: UIButton!
    @IBOutlet weak var scienceButton: UIButton!
    @IBOutlet weak var otherButton: UIButton!
    
    @IBAction func codingAction(_ sender: Any) {
        if !codingButton.isSelected {
            deselectAllButtons()
            codingButton.isSelected = true
            descriptionTextField.text! = coding
            flag = "coding"
            print("CODING BUTTON: FLAG \(flag)")
        }
        
        
    }
    
    
    @IBAction func designAction(_ sender: Any) {
        if !designButton.isSelected {
            deselectAllButtons()
            designButton.isSelected = true
            descriptionTextField.text! = design
            flag = "design"
            print("CODING DESIGN: FLAG \(flag)")
        }
    }
    
    
    @IBAction func businessAction(_ sender: Any) {
        if !businessButton.isSelected {
            deselectAllButtons()
            businessButton.isSelected = true
            descriptionTextField.text! = business
            flag = "business"
        }
    }
    
    
    @IBAction func languageAction(_ sender: Any) {
        if !languageButton.isSelected {
            deselectAllButtons()
            languageButton.isSelected = true
            descriptionTextField.text! = language
            flag = "language"
        }
    }
    
    
    @IBAction func scienceAction(_ sender: Any) {
        if !scienceButton.isSelected {
            deselectAllButtons()
            scienceButton.isSelected = true
            descriptionTextField.text! = science
            flag = "science"
        }
    }
    
    @IBAction func otherAction(_ sender: Any) {
        if !otherButton.isSelected {
            deselectAllButtons()
            otherButton.isSelected = true
            descriptionTextField.text! = other
            flag = "other"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        //picker
        datePicker.setValue(UIColor.white, forKeyPath: "textColor")
        
        //delegate
        self.nameTextField.delegate = self
        self.surnameTextField.delegate = self
        self.emailTextField.delegate = self
        self.badgeTextField.delegate = self
        self.passwordTextField.delegate = self
        self.descriptionTextField.delegate = self
        
        //Edit the placeholder into the main storyboard
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
        self.navigationController?.isNavigationBarHidden = false
        
        
        //KeyboardNotificationTrigger
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)),
                                               name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)),
                                               name: NSNotification.Name.UIKeyboardWillHide, object: nil)

    }
    
    override open func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        NotificationCenter.default.removeObserver(self)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //Hide Keyboard when user press return key
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return (true)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        descriptionFill()
        print("TEXTFIELD DID END \(flag)")
    }
    

    
    @objc func keyboardWillShow(notification: Notification) {
    let userInfo:NSDictionary = notification.userInfo! as NSDictionary
    let keyboardFrame:NSValue = userInfo.value(forKey: UIKeyboardFrameEndUserInfoKey) as! NSValue
    let keyboardRectangle = keyboardFrame.cgRectValue
    let keyboardHeight = keyboardRectangle.height
    // do whatever you want with this keyboard height
      super.view.frame.origin = CGPoint(x: 0.0, y: -(keyboardHeight - 50.0))
        
    }
    
    @objc func keyboardWillHide(notification: Notification) {
       super.view.frame.origin = CGPoint(x: 0.0, y: 0.0)
        
    }
    
    func deselectAllButtons() {
        
        codingButton.isSelected = false
        designButton.isSelected = false
        businessButton.isSelected = false
        languageButton.isSelected = false
        scienceButton.isSelected = false
        otherButton.isSelected = false
        
    }
    
    
    func descriptionFill() {
        
        switch flag {
            
        case "coding":
            coding = descriptionTextField.text!
            if coding != "" {
                codingButton.backgroundColor = UIColor.green
                codingButton.titleLabel?.textColor = UIColor.black
                print("\(flag) not empty!")
            } else {
                codingButton.backgroundColor = UIColor.black
                print("\(flag) empty!")
            }
            
        case "design":
            design = descriptionTextField.text!
            if design != "" {
                designButton.backgroundColor = UIColor.green
                businessButton.titleLabel?.textColor = UIColor.black
                print("\(flag) not empty!")
            } else {
                designButton.backgroundColor = UIColor.black
                print("\(flag) empty!")
            }
        
        case "business":
            business = descriptionTextField.text!
            if business != "" {
                businessButton.backgroundColor = UIColor.green
                businessButton.titleLabel?.textColor = UIColor.black
            } else {
                businessButton.backgroundColor = UIColor.black
            }
        case "language":
            language = descriptionTextField.text!
            if language != "" {
                languageButton.backgroundColor = UIColor.green
                languageButton.titleLabel?.textColor = UIColor.black
            } else {
                languageButton.backgroundColor = UIColor.black
            }
            
        case "science":
            science = descriptionTextField.text!
            if science != "" {
                scienceButton.backgroundColor = UIColor.green
                scienceButton.titleLabel?.textColor = UIColor.black
            } else {
                scienceButton.backgroundColor = UIColor.black
                
            }
        
        case "other":
            other = descriptionTextField.text!
            if other != "" {
                otherButton.backgroundColor = UIColor.green
                otherButton.titleLabel?.textColor = UIColor.black
            } else {
                otherButton.backgroundColor = UIColor.black
            }
            
            
            
        default:
            deselectAllButtons()
            
        }
        
        
        
        
    }

    

}
