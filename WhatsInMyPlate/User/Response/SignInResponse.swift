//
//  SignInResponse.swift
//  WhatsInMyPlate
//
//  Created by user172209 on 7/12/20.
//  Copyright © 2020 Groupe7. All rights reserved.
//

import Foundation

class SignInResponse : Codable {
    var username: String
    var email: String
    var role: String?
    var accessToken: String
    
    init(username: String, email: String, accessToken: String, role: String?){
        self.username=username
        self.email=email
        if role != nil {
            self.role=role
        }
        self.accessToken=accessToken
    }
}
