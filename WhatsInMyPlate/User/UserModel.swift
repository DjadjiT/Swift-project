//
//  UserModel.swift
//  WhatsInMyPlate
//
//  Created by user172209 on 7/12/20.
//  Copyright © 2020 Groupe7. All rights reserved.
//

import Foundation

class UserModel {
    var id: Int64
    var username: String
    var password: String
    var phoneNumber: String
    var firstName: String
    var lastName: String
    var email: String
    
    init(id:Int64, username: String, password: String, email: String, phoneNumber: String, firstName: String, lastName: String) {
        self.id=id
        self.username=username
        self.password=password
        self.email=email
        self.phoneNumber=phoneNumber
        self.lastName=lastName
        self.firstName=firstName
    }
}
