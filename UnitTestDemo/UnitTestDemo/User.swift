//
//  User.swift
//  UnitTestDemo
//
//  Created by Rajeshkumar maddi on 21/03/18.
//  Copyright © 2018 SaiRajesh. All rights reserved.
//

import Foundation
class User {
    let Email:String
    let PhoneNo:String
    
    init(email:String, phone:String) {
        self.Email = email
        self.PhoneNo = phone
    }
  
    func isvalidEmail() ->Bool{
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}+[.]{0,1}[A-Za-z]{0,4}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        let result = emailTest.evaluate(with: self.Email)
        return result
    }
    func isvalidPhoneNumber() ->Bool{
        return self.PhoneNo.count == 10
    }
}
