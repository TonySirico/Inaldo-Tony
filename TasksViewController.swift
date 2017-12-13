//
//  TasksViewController.swift
//  Inaldo&Tony
//
//  Created by Antonio Sirica on 11/12/2017.
//  Copyright © 2017 Antonio Sirica. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var Controller: UISegmentedControl!
    @IBOutlet weak var TableView: UITableView!
    @IBOutlet weak var SecondTableView: UITableView!
    
    struct PreviewDetail
    {
        let title: String
        let preferredHeight: Double
    }
    
    let sampleData =
    [
        PreviewDetail(title: "Small", preferredHeight: 160.0),
        PreviewDetail(title: "Medium", preferredHeight: 320.0),
        PreviewDetail(title: "Large", preferredHeight: 0.0) // 0.0 to get the default height.
    ]
    
    let sampleData1 =
     
    [
        PreviewDetail(title: "Small 2", preferredHeight: 160.0),
        PreviewDetail(title: "Medium 2", preferredHeight: 320.0),
        PreviewDetail(title: "Large 2", preferredHeight: 0.0) // 0.0 to get the default height.
    ]
    
    let sampleData2 =
        
        [
            PreviewDetail(title: "Small 3", preferredHeight: 160.0),
            PreviewDetail(title: "Medium 3", preferredHeight: 320.0),
            PreviewDetail(title: "Large 3", preferredHeight: 0.0) // 0.0 to get the default height.
    ]
    
    let sampleData3 =
        
        [
            PreviewDetail(title: "Small 4", preferredHeight: 160.0),
            PreviewDetail(title: "Medium 4", preferredHeight: 320.0),
            PreviewDetail(title: "Large 4", preferredHeight: 0.0) // 0.0 to get the default height.
    ]
    
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
                count = sampleData.count
            }
            
            if tableView == self.SecondTableView
            {
                count = sampleData1.count
            }
            break
        
        case 1:
            if tableView == self.TableView
            {
                count = sampleData2.count
            }
            
            if tableView == self.SecondTableView
            {
                count = sampleData3.count
            }
            break
            
        default:
            break
        }
        
        return count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        var cell: UITableViewCell?
        
        switch(Controller.selectedSegmentIndex)
        {
            
        case 0:
            if tableView == self.TableView
            {
                cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
                let previewDetail = sampleData[indexPath.row]
                cell!.textLabel!.text = previewDetail.title
            }
            
            if tableView == self.SecondTableView
            {
                cell = tableView.dequeueReusableCell(withIdentifier: "secondCell", for: indexPath)
                let previewDetail = sampleData1[indexPath.row]
                cell!.textLabel!.text = previewDetail.title
            }
            break
            
        case 1:
            if tableView == self.TableView
            {
                cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
                let previewDetail = sampleData2[indexPath.row]
                cell!.textLabel!.text = previewDetail.title
            }
            
            if tableView == self.SecondTableView
            {
                cell = tableView.dequeueReusableCell(withIdentifier: "secondCell", for: indexPath)
                let previewDetail = sampleData3[indexPath.row]
                cell!.textLabel!.text = previewDetail.title
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
