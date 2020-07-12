//
//  UserRepository.swift
//  WhatsInMyPlate
//
//  Created by user172209 on 7/12/20.
//  Copyright © 2020 Groupe7. All rights reserved.
//

import Foundation

class UserPreferences{
    
    
    let userDefaults: UserDefaults
    
    init(userDefaults: UserDefaults = .standard) {
        self.userDefaults=userDefaults
    }
    
    func storeUserCredentials(login: LoginDto, role: String){
        userDefaults.set(login.username, forKey: "username")
        userDefaults.set(login.password, forKey: "password")
        userDefaults.set(role, forKey: "role")
    }
    
    
    
    func getUserCredentials() -> LoginDto?{
        if let username=userDefaults.string(forKey: "username"){
            if let password=userDefaults.string(forKey: "password") {
                return LoginDto(username: username, password: password)
            }
        }
        return nil
    }
        
    
}
