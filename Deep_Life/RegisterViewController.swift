//
//  RegisterViewController.swift
//  Deep_Life
//
//  Created by YididyaGirma on 3/26/16.
//  Copyright © 2016 BiftuGirma. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {


    
    @IBOutlet var picker: UIPickerView!
    var countryCode = ["+251", "+971", "+555"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.picker.delegate = self
        self.picker.dataSource = self
        // Do any additional setup after loading the view.
    }
    

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countryCode.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countryCode[row]
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var fullnameTxtField: UITextField!
    
    @IBOutlet weak var emailTxtField: UITextField!

    @IBOutlet weak var passwordTxtField: UITextField!
    
    @IBAction func registerButton(sender: AnyObject) {
        let fullName = fullnameTxtField.text;
        let email = emailTxtField.text;
        let pass = passwordTxtField.text;
        
        if (fullName!.isEmpty || email!.isEmpty || pass!.isEmpty){
            displayAlertMessage("please fill the fields");
            return;
        }
        NSUserDefaults.standardUserDefaults().setObject(email, forKey: "email");
        NSUserDefaults.standardUserDefaults().setObject(pass, forKey: "pass");
        NSUserDefaults.standardUserDefaults().synchronize();
        
    }
    func displayAlertMessage(userMessage: String){
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.Alert);
        
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil);
        
        myAlert.addAction(okAction);
        
        self.presentViewController(myAlert, animated: true, completion: nil);
        

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
