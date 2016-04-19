//
//  DiscipleAddViewController.swift
//  Deep_Life
//
//  Created by YididyaGirma on 3/27/16.
//  Copyright © 2016 BiftuGirma. All rights reserved.
//

import UIKit

class DiscipleAddViewController: UIViewController {
    
    
    @IBOutlet var fullName: UITextField!
    
    @IBOutlet var email: UITextField!
    
    
    
    @IBOutlet var phoneNumber: UITextField!
    
    
    @IBAction func addDisciple(sender: AnyObject) {
        
        var item = email.text! + fullName.text!
        discipleList.append(item)
        
        item = ""
        
        
    }
    
    
    
    
    
    
    
        

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)

    }
    func textFieldShouldReturn(textField: UITextField!) -> Bool{
        
        fullName.resignFirstResponder()
        email.resignFirstResponder()
        return true
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
