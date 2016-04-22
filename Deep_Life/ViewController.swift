//
//  LaunchScreenViewController.swift
//  Deep_Life
//
//  Created by YididyaGirma on 4/22/16.
//  Copyright © 2016 BiftuGirma. All rights reserved.
//

import UIKit
//import SwiftyJSON

class ViewController: UIViewController, ABCIntroViewDelegate {
    var introView = ABCIntroView.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = NSUserDefaults.standardUserDefaults()
        if (defaults.objectForKey("intro_screen_viewed") == nil){
            print("here")
            
            self.introView = ABCIntroView(frame: self.view.frame)
            self.introView.delegate = self
            self.introView.backgroundColor = UIColor.init(white: 0.149, alpha: 1.000)
            
            self.view.addSubview(self.introView)
        }
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func onDoneButtonPressed() {
        //UIView.animateWithDuration(1.0, animations:) { (finished) -> Void in
        //  self.introView.removeFromSuperview()
        //}
        UIView.animateWithDuration(1.0, delay: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.introView.alpha = 0
            }) { (Bool finished) -> Void in
                self.introView.removeFromSuperview()
                
        }
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
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
