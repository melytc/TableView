//
//  ViewController.swift
//  TableView
//
//  Created by alumno on 05/09/16.
//  Copyright © 2016 MelissaTrevino. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var array = ["Axel", "Melissa", "Bernardo", "Jessica", "David", "María", "John", "Paul", "Sophia"]
    
    @IBOutlet weak var outletTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table View's Data Source methods
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("idCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = array[indexPath.row]
        cell.detailTextLabel?.text = "Click me"
        
        let image = UIImage(named: "mario")
        cell.imageView?.image = image
        
        return cell
    }
    
    // MARK - Navigation methods
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let viewDetail = segue.destinationViewController as! ViewControllerDetails
        let indexPath = outletTableView.indexPathForSelectedRow
        
        viewDetail.detail = array[(indexPath?.row)!]
    }
    
}

