//
//  TasksViewController.swift
//  Inaldo&Tony
//
//  Created by Antonio Sirica on 11/12/2017.
//  Copyright © 2017 Antonio Sirica. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        if indexPath.row == 0
        {
            cell.backgroundColor = .red
        }
        else
        {
            cell.backgroundColor = .black
        }
        
        
        
        
        return cell
    }
    
    
    @IBOutlet var Controller: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    

/*    @IBAction func ChangeLbl(_ sender: UISegmentedControl)
    {
        
        if Controller.selectedSegmentIndex == 0
        {
         
        Label.text = "Hello World"
            
        }
        if Controller.selectedSegmentIndex == 1
        {
        Label.text = "Hello Intersect"
            
        }
        
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
