//
//  HomeCategoriesTableViewController.swift
//  Inaldo&Tony
//
//  Created by Inaldo Ramos Ribeiro on 19/12/2017.
//  Copyright © 2017 Antonio Sirica. All rights reserved.
//

import UIKit

class HomeCategoriesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var surName: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    
}

class HomeCategoriesTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var names = ["Cecilia", "Pasquale", "Astrogildo", "Natalia", "Lis", "Perna"]
    var surnames = ["Silva Ribeiro", "Antonio Ramos Ribeiro", "Toschi Magalhes", "Salti", "Pereira Rios", "Oliveira da Silva Sauro"]
    var skills = ["Coding", "Desing", "Business", "Languages", "Other", "Other"]
    var timeRequested = ["50", "90", "130", "100", "11", "30"]
    var timeLeft = ["12", "7", "100", "800", "47", "99"]
    
    var profilePhoto = [#imageLiteral(resourceName: "dummyProfilePic"), #imageLiteral(resourceName: "Coding"), #imageLiteral(resourceName: "Design"), #imageLiteral(resourceName: "Music"), #imageLiteral(resourceName: "Design"), #imageLiteral(resourceName: "Music")]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var tableViewOutlet: UITableView!
    @IBOutlet weak var categoriesImage: UIImageView!
    @IBOutlet weak var labelCategories: UILabel!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCategoriesCell", for: indexPath) as! HomeCategoriesTableViewCell
        
        cell.name.text = names[indexPath.row]
        cell.surName.text = surnames[indexPath.row]
        cell.profileImage.image = profilePhoto[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableViewOutlet.deselectRow(at: indexPath, animated: true)
//        HERE WE WILL CALL THE SELLER PROFILE
        print("I am IN")
    }
    
/*    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableViewOutlet.deselectRow(at: indexPath, animated: true)
        self.performSegue(withIdentifier: "goToProfile", sender: self)
    } */
    
}
