//
//  LoginDto.swift
//  WhatsInMyPlate
//
//  Created by user172209 on 7/11/20.
//  Copyright © 2020 Groupe7. All rights reserved.
//

import Foundation

class LoginDto : Codable{
    var username: String
    var password: String
    
    init(username: String, password: String) {
        self.username=username
        self.password=password
    }
    
    func toDictionnary() -> [String:Any]{
        return ["username":self.username, "password":self.password]
    }
    
}
