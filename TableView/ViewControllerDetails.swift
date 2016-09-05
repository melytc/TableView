//
//  ViewControllerDetails.swift
//  TableView
//
//  Created by alumno on 05/09/16.
//  Copyright © 2016 MelissaTrevino. All rights reserved.
//

import UIKit

class ViewControllerDetails: UIViewController {

    @IBOutlet weak var lbDetails: UILabel!
    var detail : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbDetails.text = detail + " <3"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
