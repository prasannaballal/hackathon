//
//  AppHistoryViewController.swift
//  Hack
//
//  Created by Sreeja Chowdhury on 7/19/18.
//  Copyright © 2018 Sreeja Chowdhury. All rights reserved.
//

import UIKit

class AppHistoryViewController: UITableViewController {
    
//    let trackerValues = ["1","2","3","4","5"]
//    let primaryValues = ["1/1/2018","1/2/2018","1/3/2018","1/4/2018","1/5/2018"]
//    let imageNames = ["prescription","prescription","prescription","prescription","prescription"]
    let trackerValues = ["Diet","Exercise","Medicine","Sleep","My Binder"]
    let primaryValues = ["Calories: 100/1500","Calories: 100/1500","Calories: 100/1500","Calories: 100/1500",""]
    let imageNames = ["launch1","launch1","launch1","launch1","launch1","launch1"]


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90.0
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = (tableView.dequeueReusableCell(withIdentifier: "test", for: indexPath) as? TableViewCell)!
        
        cell.trackerValue.text = trackerValues[indexPath.row]
        cell.primaryDescription.text = primaryValues[indexPath.row]
        cell.imageForTracker.image = UIImage(named: imageNames[indexPath.row])
        cell.contentView.backgroundColor = UIColor.blue
        // Configure the cell...
        
        
        
        return cell
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
