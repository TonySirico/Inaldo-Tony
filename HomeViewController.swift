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
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = UIColor.clear
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapAction(_ sender: UITapGestureRecognizer) {
        if searchBarOutlet.isFirstResponder {
            searchBarOutlet.resignFirstResponder()
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
    }
    
    @IBAction func navButtonAction(_ sender: UIButton) {
        searchBarOutlet.becomeFirstResponder()
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
    
    @IBAction func searchBarButton(_ sender: UIButton) {
        searchBarOutlet.becomeFirstResponder()
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
    
    @IBOutlet weak var searchBarOutlet: UISearchBar!
    
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
