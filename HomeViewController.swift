//
//  HomeViewController.swift
//  Inaldo&Tony
//
//  Created by Inaldo Ramos Ribeiro on 11/12/2017.
//  Copyright © 2017 Antonio Sirica. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var firstButtonOutlet: UIButton!
    @IBAction func firstButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "categorySegue", sender: self)
    }
    
    @IBOutlet weak var secondButtonOutlet: UIButton!
    @IBAction func secondButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "categorySegue", sender: self)
    }
    
    @IBOutlet weak var thirdButtonOutlet: UIButton!
    @IBAction func thirdButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "categorySegue", sender: self)
    }
    
    @IBOutlet weak var fourthButtonOutlet: UIButton!
    @IBAction func fourthButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "categorySegue", sender: self)
    }
    
    @IBOutlet weak var fifthButtonOutlet: UIButton!
    @IBAction func fifthButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "categorySegue", sender: self)
    }
    
    @IBOutlet weak var sixthButtonOutlet: UIButton!
    @IBAction func sixthButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "categorySegue", sender: self)
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