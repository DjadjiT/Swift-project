//
//  UserService.swift
//  WhatsInMyPlate
//
//  Created by user172209 on 7/12/20.
//  Copyright © 2020 Groupe7. All rights reserved.
//

import Foundation

class UserService{
    
    static let baseURL: String="http://jeeGrp7-env.eba-pcu7udus.eu-west3.elasticbeanstalk.com/"
    static let signInURL: String="auth/signin"
    static let signUpURL: String="auth/signup"
    
    
    func getUserInfo(){
        
    }
    
    static func logUser(loginDto: LoginDto) -> Bool?{
        guard let url=URL(string: baseURL+signInURL) else {
            return nil
        }
            
        var request=URLRequest(url: url)
        let headers=["content-type":"application/json"]
        request.allHTTPHeaderFields=headers
        request.httpMethod="POST"
        let body = loginDto.toDictionnary()
        
        do {
            let jsonBody=try JSONSerialization.data(withJSONObject: body, options: .fragmentsAllowed)
            request.httpBody=jsonBody
            
        }catch {
            print("Error while serializing")
        }
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request){ (data, reponse, error) in
            if error==nil && data != nil {
                do {
                    let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as? [String:Any]
                    print(json)
                }catch {
                    print("Error while processing")
                }
            }
        }
        
        dataTask.resume()
        return false
        
    }
    
    func logOut(){
        
    }
    
    private func sendLoginRequest(loginDto: LoginDto) -> Bool?{
                
        return true
    }
    
    private func sendRegisterUser(userDto: UserDto){
        
    }
    
}
