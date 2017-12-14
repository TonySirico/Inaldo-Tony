//
//  SignupViewController.swift
//  Inaldo&Tony
//
//  Created by Davide Cifariello on 13/12/17.
//  Copyright © 2017 Antonio Sirica. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {
    
    //vars
    var coding = ""
    var design = ""
    var business = ""
    var language = ""
    var science = ""
    var other = ""

    //outlets
    @IBOutlet weak var nameTextField: RoundedUITextField!
    @IBOutlet weak var surnameTextField: RoundedUITextField!
    @IBOutlet weak var emailTextField: RoundedUITextField!
    @IBOutlet weak var badgeTextField: RoundedUITextField!
    @IBOutlet weak var passwordTextField: RoundedUITextField!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    @IBOutlet weak var codingButton: RoundedButton!
    @IBOutlet weak var designButton: RoundedButton!
    @IBOutlet weak var businessButton: RoundedButton!
    @IBOutlet weak var languageButton: RoundedButton!
    @IBOutlet weak var scienceButton: RoundedButton!
    @IBOutlet weak var otherButton: RoundedButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //picker
        datePicker.setValue(UIColor.white, forKeyPath: "textColor")
        
        //Edit the placeholder into the main storyboard
        
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
    
    
    /*
     class SecondViewController: UIViewController {
     
     @IBOutlet weak var textField: UITextField!
     @IBAction func swipeDown(_ sender: Any) {
     Write.shared.writing = textField.text!
     self.dismiss(animated: true, completion: nil)
     }
     override func viewDidLoad() {
     super.viewDidLoad()
     
     // Do any additional setup after loading the view.
     }
     
     override func didReceiveMemoryWarning() {
     super.didReceiveMemoryWarning()
     // Dispose of any resources that can be recreated.
     }
     
     
     
     override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
     self.view.endEditing(true)
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
     */

}
