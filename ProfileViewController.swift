//
//  ProfileViewController.swift
//  Inaldo&Tony
//
//  Created by Antonio Sirica on 11/12/2017.
//  Copyright © 2017 Antonio Sirica. All rights reserved.
//

import UIKit

class ProfileTableViewCell: UITableViewCell
{
    @IBOutlet weak var skillLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
}

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    @IBOutlet weak var profileTableView: UITableView!
    @IBOutlet weak var profileImageView: UIImageView!
    
    var skill = ["Coding", "Desing", "Economics", "Languages", "Others", "Musical Instruments"]
    var profileDescription = ["Coding is Coding is Coding is Coding is Coding is Coding is Coding is Coding is Coding is Coding is Coding is Coding is Coding is Coding is Coding is Coding is Coding is Coding is", "Desing is Design Desing is Design Desing is Design Desing is Design", "Economics is Economics is Economics is Economics", "Languages is Languages is Languages is Languages", "Others is Others is Others is Others is Others is", "MI is MI"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.profileImageView.layer.cornerRadius = self.profileImageView.frame.size.width / 2
        self.profileImageView.clipsToBounds = true
        
        profileTableView.dataSource = self
        profileTableView.delegate = self
        
        profileTableView.estimatedRowHeight = 30
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        let count = skill.count
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as? ProfileTableViewCell
        
        let skillForLabel = skill[indexPath.row]
        let descriptionForLabel = profileDescription[indexPath.row]

        cell!.skillLabel!.text = skillForLabel
        cell!.descriptionLabel!.text = descriptionForLabel
        
        return cell!
    }


    
    
}
