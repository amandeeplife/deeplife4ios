//
//  GetUserData.swift
//  Deep_Life
//
//  Created by YididyaGirma on 4/8/16.
//  Copyright © 2016 BiftuGirma. All rights reserved.
//

import Foundation
import SwiftyJSON

protocol UserLoginDelegate{
    func loginCheck(user: User)
}

class loginData {
    var delegate: UserLoginDelegate?
    
    func getUser(name: String){
        let path = "api"
        let url = NSURL(string: path)
        let session = NSURLSession.sharedSession()
        let task = session.dataTaskWithURL(url!) { (data: NSData?, response: NSURLResponse?, error: NSError?) -> Void in
            //let json = JSON(data: data!)
            //here fetch data for a user
            
           // let user = User(userName: userName, disciples: disciples, password: password)
           
            // if self.delegate != nil {
           //     dispatch_async(dispatch_get_main_queue(), { () -> Void in
           //         self.delegate?.loginCheck(user)
           //     })
           // }
            
        }
        task.resume()
        
    }
}