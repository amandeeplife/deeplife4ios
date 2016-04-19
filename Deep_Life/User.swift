//
//  User.swift
//  Deep_Life
//
//  Created by YididyaGirma on 4/8/16.
//  Copyright © 2016 BiftuGirma. All rights reserved.
//

import Foundation

struct User {
    let userName: String
    let disciples: String
    let password:String
    
    init(userName: String, disciples: String, password:String){
        self.userName = userName
        self.disciples = disciples
        self.password = password
    }
}