//
//  DiscipleList.swift
//  Deep_Life
//
//  Created by YididyaGirma on 3/25/16.
//  Copyright © 2016 BiftuGirma. All rights reserved.
//

import UIKit

var discipleList = [String] ()

class DiscipleList: UIViewController, UITableViewDelegate {
    

    
    @IBOutlet var discipleListTabel: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return discipleList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        cell.textLabel?.text = discipleList[indexPath.row]
        return cell
    }
    override func viewDidAppear(animated: Bool) {
        discipleListTabel.reloadData()
    }
}
