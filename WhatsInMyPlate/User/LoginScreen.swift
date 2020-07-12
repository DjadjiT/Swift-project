//
//  SignInScreen.swift
//  WhatsInMyPlate
//
//  Created by user172209 on 7/11/20.
//  Copyright © 2020 Groupe7. All rights reserved.
//

import SwiftUI

struct LoginScreen : View {
    
    @State private var username=""
    @State private var password=""
    @State private var isPasswordHide=true;
    
    
    
    var body:some View {
            NavigationView{
                VStack(alignment: .leading, spacing: 10){
                    Text("Username").bold().padding()
                    TextField("Enter your username", text: $username)
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                    
                    
                    Divider()
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                    
                    Spacer().frame(height:30)
                    
                    Text("Password").bold().padding()
                    
                    ZStack {
                        HStack {
                            if self.isPasswordHide{
                                SecureField("Enter your password", text: $password)
                            }else {
                                TextField("Enter your password", text: $password)
                            }
                            Button(action: {
                                self.isPasswordHide.toggle()
                            }){
                                Image(systemName: self.isPasswordHide ?  "eye.fill":"eye.slash.fill")
                            }.offset(x:-10, y:0)
                            
                        }.padding([.leading, .trailing])
                    }
                    
                    Divider()
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                    
                    HStack{
                        Button("Sign In",
                               action: {
                                
                                let dto: LoginDto=LoginDto(username: self.username, password: self.password)
                                
                                DishesList()
                                
                        })
                        
                        Spacer()
                        
                        NavigationLink(destination: RegisterScreen()){
                            Text("Sign Up")
                        }.buttonStyle(DefaultButtonStyle())
                    }.padding()
            
                }
        }
    }}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
