//
//  ViewController.swift
//  Deep_Life
//
//  Created by YididyaGirma on 3/25/16.
//  Copyright © 2016 BiftuGirma. All rights reserved.
//

import UIKit
//import SwiftyJSON


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var phoneNumber: UITextField!

    @IBOutlet weak var password: UITextField!
    @IBAction func notamemberBtn(sender: AnyObject) {
    }
    @IBAction func login(sender: AnyObject) {
        let phonenumber = phoneNumber.text;
        let pass = password.text;
        
        if phonenumber!.characters.count < 5 {
            displayAlertMessage("Fill all the fields");
            return
        }
        if pass!.characters.count < 8{
            displayAlertMessage("fill out your password");
            return
        }
        //call loginCheck()
        
        
    }
    
    @IBOutlet weak var notRegistered: UILabel!
    func displayAlertMessage(userMessage: String){
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.Alert);
        
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil);
        
        myAlert.addAction(okAction);
        
        self.presentViewController(myAlert, animated: true, completion: nil);
        
    }
    
    
    func loginCheck(user: User){
        let number = phoneNumber.text;
        let pass = password.text;
        
        if (number == user.userName && pass == user.password){
            self.dismissViewControllerAnimated(true, completion: nil);
        }
    
        
    }
    
    
}

