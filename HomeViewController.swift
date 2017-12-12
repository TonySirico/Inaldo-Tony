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
        
        categoryLabelOutlet.center = CGPoint(x: super.view.frame.width/2, y: -20)
        
        backButtonOutlet.center = CGPoint(x: 51, y: -20)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func moveButtonsOut() {
        UIView.animate(withDuration: 0.3, animations: {self.firstButtonOutlet.center = CGPoint(x: -75, y:168)
        })
        UIView.animate(withDuration: 0.3, animations: {self.secondButtonOutlet.center = CGPoint(x: 450, y:168)
        })
        UIView.animate(withDuration: 0.3, animations: {self.thirdButtonOutlet.center = CGPoint(x: -75, y:343)
        })
        UIView.animate(withDuration: 0.3, animations: {self.fourthButtonOutlet.center = CGPoint(x: 450, y:343)
        })
        UIView.animate(withDuration: 0.3, animations: {self.fifthButtonOutlet.center = CGPoint(x: -75, y:518)
        })
        UIView.animate(withDuration: 0.3, animations: {self.sixthButtonOutlet.center = CGPoint(x: 450, y:518)
        })
    }
    
    func moveButtonsIn() {
        UIView.animate(withDuration: 0.3, animations: {self.firstButtonOutlet.center = CGPoint(x: 99, y:168)
        })
        UIView.animate(withDuration: 0.3, animations: {self.secondButtonOutlet.center = CGPoint(x: 276, y:168)
        })
        UIView.animate(withDuration: 0.3, animations: {self.thirdButtonOutlet.center = CGPoint(x: 99, y:343)
        })
        UIView.animate(withDuration: 0.3, animations: {self.fourthButtonOutlet.center = CGPoint(x: 276, y:343)
        })
        UIView.animate(withDuration: 0.3, animations: {self.fifthButtonOutlet.center = CGPoint(x: 99, y:518)
        })
        UIView.animate(withDuration: 0.3, animations: {self.sixthButtonOutlet.center = CGPoint(x: 276, y:518)
        })
    }
    
    func moveLabelIn() {
        moveButtonsOut()
        UIView.animate(withDuration: 0.3, animations: {self.categoryLabelOutlet.center = CGPoint(x: super.view.frame.width/2, y:44)
        })
        UIView.animate(withDuration: 0.3, animations: {self.searchBarOutlet.center = CGPoint(x: super.view.frame.width/2, y:-56)
        })
        UIView.animate(withDuration: 0.3, animations: {self.searchBarButtonOutlet.center = CGPoint(x: 167, y:-56)
        })
        UIView.animate(withDuration: 0.3, animations: {self.searchBarCancelButtonAreaOutlet.center = CGPoint(x: 354.5, y:-56)
        })
        UIView.animate(withDuration: 0.3, animations: {self.backButtonOutlet.center = CGPoint(x: 51, y:44)
        })
    }
    
    func moveLabelOut() {
        moveButtonsIn()
        UIView.animate(withDuration: 0.3, animations: {self.categoryLabelOutlet.center = CGPoint(x: super.view.frame.width/2, y:-20)
        })
        UIView.animate(withDuration: 0.3, animations: {self.searchBarOutlet.center = CGPoint(x: super.view.frame.width/2, y:54)
        })
        UIView.animate(withDuration: 0.3, animations: {self.searchBarButtonOutlet.center = CGPoint(x: 167, y:54)
        })
        UIView.animate(withDuration: 0.3, animations: {self.searchBarCancelButtonAreaOutlet.center = CGPoint(x: 354.5, y:54)
        })
        UIView.animate(withDuration: 0.3, animations: {self.backButtonOutlet.center = CGPoint(x: 51, y:-20)
        })
    }
    
    func prepareButtonsForBack() {
        self.firstButtonOutlet.center = CGPoint (x:-252, y:168)
        self.thirdButtonOutlet.center = CGPoint (x:-252, y:343)
        self.fifthButtonOutlet.center = CGPoint (x:-252, y:518)
        self.secondButtonOutlet.center = CGPoint (x:-75, y:168)
        self.fourthButtonOutlet.center = CGPoint (x:-75, y:343)
        self.sixthButtonOutlet.center = CGPoint (x:-75, y:518)
    }
    
    @IBOutlet weak var searchBarCancelButtonAreaOutlet: UIButton!
    @IBAction func searchBarCancelButtonAreaAction(_ sender: UIButton) {
        if searchBarOutlet.text != "" {
            searchBarOutlet.text = ""
            searchBarOutlet.resignFirstResponder()
            moveButtonsIn()
        } else {
            searchBarOutlet.becomeFirstResponder()
            moveButtonsOut()
        }
    }
    
    @IBAction func tapAction(_ sender: UITapGestureRecognizer) {
        if searchBarOutlet.isFirstResponder {
            searchBarOutlet.text = ""
            searchBarOutlet.resignFirstResponder()
            moveButtonsIn()
        }
    }
    
    @IBOutlet weak var searchBarButtonOutlet: UIButton!
    @IBAction func searchBarButtonAction(_ sender: UIButton) {
        searchBarOutlet.becomeFirstResponder()
        moveButtonsOut()
    }
    
    @IBOutlet weak var searchBarOutlet: UISearchBar!
    
    @IBOutlet weak var categoryLabelOutlet: UILabel!
    
    @IBOutlet weak var backButtonOutlet: UIButton!
    @IBAction func backButtonAction(_ sender: UIButton) {
        searchBarOutlet.resignFirstResponder()
        moveLabelOut()
    }
    
    @IBAction func swipeAction(_ sender: UISwipeGestureRecognizer) {
        searchBarOutlet.resignFirstResponder()
        prepareButtonsForBack()
        moveLabelOut()
    }
    
    @IBOutlet weak var firstButtonOutlet: UIButton!
    @IBAction func firstButtonAction(_ sender: UIButton) {
        categoryLabelOutlet.text = "Coding"
        moveLabelIn()
    }
    
    @IBOutlet weak var secondButtonOutlet: UIButton!
    @IBAction func secondButtonAction(_ sender: UIButton) {
        categoryLabelOutlet.text = "Design"
        moveLabelIn()
    }
    
    @IBOutlet weak var thirdButtonOutlet: UIButton!
    @IBAction func thirdButtonAction(_ sender: UIButton) {
        categoryLabelOutlet.text = "Language"
        moveLabelIn()
    }
    
    @IBOutlet weak var fourthButtonOutlet: UIButton!
    @IBAction func fourthButtonAction(_ sender: UIButton) {
        categoryLabelOutlet.text = "Sport"
        moveLabelIn()
    }
    
    @IBOutlet weak var fifthButtonOutlet: UIButton!
    @IBAction func fifthButtonAction(_ sender: UIButton) {
        categoryLabelOutlet.text = "Music"
        moveLabelIn()
    }
    
    @IBOutlet weak var sixthButtonOutlet: UIButton!
    @IBAction func sixthButtonAction(_ sender: UIButton) {
        categoryLabelOutlet.text = "Others"
        moveLabelIn()
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
