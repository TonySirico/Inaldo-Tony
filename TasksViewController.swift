//
//  TasksViewController.swift
//  Inaldo&Tony
//
//  Created by Antonio Sirica on 11/12/2017.
//  Copyright © 2017 Antonio Sirica. All rights reserved.
//

import UIKit

class TasksTableViewCell: UITableViewCell
{
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelSkill: UILabel!
    @IBOutlet weak var labelSurname: UILabel!
    @IBOutlet weak var labelTimeRemaining: UILabel!
    @IBOutlet weak var labelTimeRequested: UILabel!
    
    @IBOutlet weak var labelNameSecond: UILabel!
    @IBOutlet weak var labelSkillSecond: UILabel!
    @IBOutlet weak var labelSurnameSecond: UILabel!
    @IBOutlet weak var labelTimeRequestedSecond: UILabel!
    @IBOutlet weak var labelTimeRemainingSecond: UILabel!
}

class TasksViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var Controller: UISegmentedControl!
    @IBOutlet weak var TableView: UITableView!
    @IBOutlet weak var SecondTableView: UITableView!


    var names = ["Cecilia", "Pasquale", "Astrogildo", "Natalia", "Lis", "Perna"]
    var surnames = ["Silva Ribeiro", "Antonio Ramos Ribeiro", "Toschi Magalhes", "Salti", "Pereira Rios", "Oliveira da Silva Sauro"]
    var skill = ["Coding", "Desing", "Economy", "Languages", "Others", "Musical Instruments"]
    var timeRemaining = ["50", "90", "130", "100", "11", "3"]
    var timeRequested = ["12", "7", "100", "800", "47", "99"]
    
    var namesSegmented = ["Lucia Vania", "Isabel Pereira", "Sol", "Danilo", "Kameni", "Taita"]
    var surnamesSegmented = ["Silvao", "Perkiasi Silva Saurao", "Lete de Vinci", "Robatini Perske", "Olsen", "Ramos"]
    var skillSegmented = ["EUA", "Hiking", "User Interface", "User Experience", "Music", "Crafting"]
    var timeRemainingSegmented = ["23", "900", "900", "5", "38", "11"]
    var timeRequestedSegmented = ["288", "500", "100", "39", "0", "10"]

    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        TableView.dataSource = self
        TableView.delegate = self
//        TableView.register(TableView, forCellReuseIdentifier: "colorCell")
        
        SecondTableView.dataSource = self
        SecondTableView.delegate = self
//        SecondTableView.register(SecondTableView, forCellReuseIdentifier: "secondCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        var count = 0
        
        switch(Controller.selectedSegmentIndex)
        {
        case 0:
            if tableView == self.TableView
            {
                count = names.count
            }
            
            if tableView == self.SecondTableView
            {
                count = names.count
            }
            break
        
        case 1:
            if tableView == self.TableView
            {
                count = names.count
            }
            
            if tableView == self.SecondTableView
            {
                count = names.count
            }
            break
            
        default:
            break
        }
        
        return count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        var cell: TasksTableViewCell?
        
        switch(Controller.selectedSegmentIndex)
        {
            
        case 0:
            if tableView == self.TableView
            {
                cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath) as? TasksTableViewCell
                let nameLabel = names[indexPath.row]
                let surnameLabel = surnames[indexPath.row]
                let skillLabel = skill[indexPath.row]
                let timeRemainingLabel = timeRemaining[indexPath.row]
                let timeRequestedLabel = timeRequested[indexPath.row]
                
                cell!.labelName!.text = nameLabel
                cell!.labelSurname!.text = surnameLabel
                cell!.labelSkill!.text = skillLabel
                cell!.labelTimeRemaining!.text = timeRemainingLabel + " min"
                cell!.labelTimeRequested!.text = "(" + timeRequestedLabel + " minutes)"
            }
            
            if tableView == self.SecondTableView
            {
                cell = tableView.dequeueReusableCell(withIdentifier: "secondCell", for: indexPath) as? TasksTableViewCell
                let nameLabel = names[indexPath.row]
                let surnameLabel = surnames[indexPath.row]
                let skillLabel = skill[indexPath.row]
                let timeRemainingLabel = timeRemaining[indexPath.row]
                let timeRequestedLabel = timeRequested[indexPath.row]
                
                cell!.labelNameSecond.text = nameLabel
                cell!.labelSurnameSecond.text = surnameLabel
                cell!.labelSkillSecond.text = skillLabel
                cell!.labelTimeRemainingSecond.text = timeRemainingLabel + " min"
                cell!.labelTimeRequestedSecond.text = "(" + timeRequestedLabel + " minutes)"
            }
            break
            
        case 1:
            if tableView == self.TableView
            {
                cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath) as? TasksTableViewCell
                let nameLabel = namesSegmented[indexPath.row]
                let surnameLabel = surnamesSegmented[indexPath.row]
                let skillLabel = skillSegmented[indexPath.row]
                let timeRemainingLabel = timeRemainingSegmented[indexPath.row]
                let timeRequestedLabel = timeRequestedSegmented[indexPath.row]
                
                cell!.labelName!.text = nameLabel
                cell!.labelSurname!.text = surnameLabel
                cell!.labelSkill!.text = skillLabel
                cell!.labelTimeRemaining!.text = timeRemainingLabel + " min"
                cell!.labelTimeRequested!.text = "(" + timeRequestedLabel + " minutes)"
            }
            
            if tableView == self.SecondTableView
            {
                cell = tableView.dequeueReusableCell(withIdentifier: "secondCell", for: indexPath) as? TasksTableViewCell
                let nameLabel = namesSegmented[indexPath.row]
                let surnameLabel = surnamesSegmented[indexPath.row]
                let skillLabel = skillSegmented[indexPath.row]
                let timeRemainingLabel = timeRemainingSegmented[indexPath.row]
                let timeRequestedLabel = timeRequestedSegmented[indexPath.row]
                
                cell!.labelNameSecond.text = nameLabel
                cell!.labelSurnameSecond.text = surnameLabel
                cell!.labelSkillSecond.text = skillLabel
                cell!.labelTimeRemainingSecond.text = timeRemainingLabel + " min"
                cell!.labelTimeRequestedSecond.text = "(" + timeRequestedLabel + " minutes)"
            }
            break
        
        default:
            break
        }
        return cell!
    }
    
    @IBAction func Controller(_ sender: UISegmentedControl)
    {
        TableView.reloadData()
        SecondTableView.reloadData()
    }

}
