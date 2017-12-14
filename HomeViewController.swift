
//
//  HomeViewController.swift
//  Inaldo&Tony
//
//  Created by Inaldo Ramos Ribeiro on 11/12/2017.
//  Copyright © 2017 Antonio Sirica. All rights reserved.
//

import UIKit

var isSearchBarShrinked = false

class HomeViewController: UIViewController, UISearchBarDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        super.view.backgroundColor = UIColor(red:0.07, green:0.07, blue:0.07, alpha:1.0)

            categoryLabelOutlet.center = CGPoint(x: super.view.frame.width/2, y:-20)
        
        backButtonOutlet.center = CGPoint(x: 47.5, y: -20)
        
        tableViewOutlet.frame.origin = CGPoint (x:0, y:super.view.frame.height)
        
        searchBarOutlet.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        shrinkSearchBar()
        moveButtonsOut()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar){
        self.searchBarOutlet.endEditing(true)
        self.resignFirstResponder()
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
        UIView.animate(withDuration: 0.5, delay: 0.3, animations: {self.tableViewOutlet.frame.origin = CGPoint (x:0, y:87)
        })
    }
    
    func moveButtonsIn() {
        UIView.animate(withDuration: 0.3, delay:0.3, animations: {self.firstButtonOutlet.center = CGPoint(x: 99, y:168)
        })
        UIView.animate(withDuration: 0.3, delay:0.3, animations: {self.secondButtonOutlet.center = CGPoint(x: 276, y:168)
        })
        UIView.animate(withDuration: 0.3, delay:0.3, animations: {self.thirdButtonOutlet.center = CGPoint(x: 99, y:343)
        })
        UIView.animate(withDuration: 0.3, delay:0.3, animations: {self.fourthButtonOutlet.center = CGPoint(x: 276, y:343)
        })
        UIView.animate(withDuration: 0.3, delay:0.3, animations: {self.fifthButtonOutlet.center = CGPoint(x: 99, y:518)
        })
        UIView.animate(withDuration: 0.3, delay:0.3, animations: {self.sixthButtonOutlet.center = CGPoint(x: 276, y:518)
        })
        UIView.animate(withDuration: 0.3, animations: {self.tableViewOutlet.frame.origin = CGPoint (x:0, y:super.view.frame.height)
        })
        searchBarOutlet.text = ""
    }
    
    func moveLabelIn() {
        moveButtonsOut()
        let when = DispatchTime.now() + 0.3
        DispatchQueue.main.asyncAfter(deadline: when) {
            self.SearchBarOutletTopContraint.constant = -56
        }
        UIView.animate(withDuration: 0.3, animations: {self.categoryLabelOutlet.center = CGPoint(x: super.view.frame.width/2, y:54)
        })
        UIView.animate(withDuration: 0.3, animations: {self.searchBarOutlet.center = CGPoint(x: super.view.frame.width/2, y:-56)
        })
        UIView.animate(withDuration: 0.3, animations: {self.backButtonOutlet.center = CGPoint(x: 47.5, y:54)
        })
    }
    
    func moveLabelOut() {
        moveButtonsIn()
        UIView.animate(withDuration: 0.3, delay: 0.3, animations: {self.categoryLabelOutlet.center = CGPoint(x: super.view.frame.width/2, y:-20)
        })
        if isSearchBarShrinked == false {
            SearchBarOutletTopContraint.constant = 26
            UIView.animate(withDuration: 0.3, delay:0.3, animations: {self.searchBarOutlet.center = CGPoint(x: super.view.frame.width/2, y:54)
            })
            UIView.animate(withDuration: 0.3, delay:0.3, animations: {
                self.searchBarOutlet.frame = CGRect(origin: CGPoint(x: 0, y:26), size: CGSize(width: 375, height: 56))
            })
            UIView.animate(withDuration: 0.3, delay:0.3, animations: {self.backButtonOutlet.center = CGPoint(x: 47.5, y:-20)
            })
        } else {
            UIView.animate(withDuration: 0.3, animations: {
                self.searchBarConstraint.constant = 0
                self.view.layoutIfNeeded()
            })
            UIView.animate(withDuration: 0.3, animations: {self.backButtonOutlet.center = CGPoint(x: -67, y:54)
            })
        }
        searchBarOutlet.text = ""
        isSearchBarShrinked = false
    }
    
    func prepareButtonsForBack() {
        self.firstButtonOutlet.center = CGPoint (x:-252, y:168)
        self.thirdButtonOutlet.center = CGPoint (x:-252, y:343)
        self.fifthButtonOutlet.center = CGPoint (x:-252, y:518)
        self.secondButtonOutlet.center = CGPoint (x:-75, y:168)
        self.fourthButtonOutlet.center = CGPoint (x:-75, y:343)
        self.sixthButtonOutlet.center = CGPoint (x:-75, y:518)
    }
    
    func prepareBackButtonForSearchBar() {
        self.backButtonOutlet.center = CGPoint(x: -67, y:54)
    }
    
    func prepareBackButtonForCategories() {
        self.backButtonOutlet.center = CGPoint(x: 47.5, y:-20)
    }
    
    func shrinkSearchBar() {
        UIView.animate(withDuration: 0.3, animations: {
            self.searchBarConstraint.constant = 85
            self.view.layoutIfNeeded()
        })
        if isSearchBarShrinked == false {
            prepareBackButtonForSearchBar()
            UIView.animate(withDuration: 0.3, animations: {self.backButtonOutlet.center = CGPoint(x: 47.5, y:54)
            })
        }
        isSearchBarShrinked = true
    }
    
    @IBAction func tapAction(_ sender: UITapGestureRecognizer) {
        searchBarOutlet.resignFirstResponder()
    }
    
    @IBAction func swipeAction (_ sender: UISwipeGestureRecognizer) {
        searchBarOutlet.resignFirstResponder()
        prepareButtonsForBack()
        moveLabelOut()
    }
    
    @IBOutlet weak var searchBarOutlet: UISearchBar!
    @IBOutlet weak var searchBarConstraint: NSLayoutConstraint!
    @IBOutlet weak var SearchBarOutletTopContraint: NSLayoutConstraint!
    
    @IBOutlet weak var categoryLabelOutlet: UILabel!
    
    @IBOutlet weak var backButtonOutlet: UIButton!
    @IBAction func backButtonAction(_ sender: UIButton) {
        searchBarOutlet.resignFirstResponder()
        moveLabelOut()
    }
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    @IBOutlet weak var firstButtonOutlet: UIButton!
    @IBAction func firstButtonAction(_ sender: UIButton) {
        prepareBackButtonForCategories()
        categoryLabelOutlet.text = "Coding"
        moveLabelIn()
    }
    
    @IBOutlet weak var secondButtonOutlet: UIButton!
    @IBAction func secondButtonAction(_ sender: UIButton) {
        prepareBackButtonForCategories()
        categoryLabelOutlet.text = "Design"
        moveLabelIn()
    }
    
    @IBOutlet weak var thirdButtonOutlet: UIButton!
    @IBAction func thirdButtonAction(_ sender: UIButton) {
        prepareBackButtonForCategories()
        categoryLabelOutlet.text = "Language"
        moveLabelIn()
    }
    
    @IBOutlet weak var fourthButtonOutlet: UIButton!
    @IBAction func fourthButtonAction(_ sender: UIButton) {
        prepareBackButtonForCategories()
        categoryLabelOutlet.text = "Business"
        moveLabelIn()
    }
    
    @IBOutlet weak var fifthButtonOutlet: UIButton!
    @IBAction func fifthButtonAction(_ sender: UIButton) {
        prepareBackButtonForCategories()
        categoryLabelOutlet.text = "Music"
        moveLabelIn()
    }
    
    @IBOutlet weak var sixthButtonOutlet: UIButton!
    @IBAction func sixthButtonAction(_ sender: UIButton) {
        prepareBackButtonForCategories()
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
