//
//  PopUpViewError.swift
//  WhatsInMyPlate
//
//  Created by user172209 on 7/12/20.
//  Copyright © 2020 Groupe7. All rights reserved.
//

import SwiftUI

struct PopUpViewError {
    
    
    static func passwordErrorDoesntMatch()-> some View {
        VStack (alignment: .center){
            Text("Error while trying to register!")
                .bold()
                .padding()
            Text("Some of your field are badly configure : ")
            
            Text("Password doesn't match")
            
            Button(action: {
                
            }){
                Text("Dismiss")
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(5)
    }
    
    static func fieldEmpty()-> some View {
        VStack (alignment: .center){
            Text("Error while trying to register!")
                .bold()
                .padding()
            Text("Some of your field are badly configure : ")
            
            Text("You can't have a blank field")
            
            Button(action: {
                
            }){
                Text("Dismiss")
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(5)
    }
    
    static func invalidPhoneNumber()-> some View {
        VStack (alignment: .center){
            Text("Error while trying to register!")
                .bold()
                .padding()
            Text("Some of your field are badly configure : ")
            
            Text("Enter a proper phone Number")
            
            Button(action: {
                
            }){
                Text("Dismiss")
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(5)
    }
    
    
    static func invalidEmail()-> some View {
        VStack (alignment: .center){
            Text("Error while trying to register!")
                .bold()
                .padding()
            Text("Some of your field are badly configure : ")
            
            Text("Enter a proper email address")
            
            Button(action: {
                
            }){
                Text("Dismiss")
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(5)
    }
    
}

