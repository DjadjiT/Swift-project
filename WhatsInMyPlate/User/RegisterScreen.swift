//
//  RegisterScreen.swift
//  WhatsInMyPlate
//
//  Created by user172209 on 7/11/20.
//  Copyright © 2020 Groupe7. All rights reserved.
//

import SwiftUI

struct RegisterScreen : View {
    
    var roles = ["ROLE_COOK", "ROLE_CLIENT"]
    
    @State private var selectedRole=0
    @State private var username=""
    @State private var password1=""
    @State private var password2=""
    @State private var firstName=""
    @State private var lastName=""
    @State private var phoneNumber=""
    @State private var email=""
    @State private var isPasswordHide1=true
    @State private var isPasswordHide2=true
    @State private var isCook=false
    
    @State private var showErrorMsg=false
    @State var errorMsg=""
    
    
    var body:some View {
        NavigationView {
            Form {
                
                Section(header: Text("Username")) {
                    TextField("Enter your username",
                              text: $username)
                }
                Section(header: Text("Password")){
                    
                
                    HStack {
                        if self.isPasswordHide1{
                            SecureField("Enter your password", text: $password1)
                        }else {
                            TextField("Enter your password", text: $password1)
                        }
                        Button(action: {
                            self.isPasswordHide1.toggle()
                        }){
                            Image(systemName: self.isPasswordHide1 ?  "eye.fill":"eye.slash.fill")
                        }.offset(x:-20, y:0)
                        
                    }
                    HStack {
                        if self.isPasswordHide2{
                            SecureField("Enter your password", text: $password2)
                        }else {
                            TextField("Confirm your password", text: $password2)
                        }
                        Button(action: {
                            self.isPasswordHide2.toggle()
                        }){
                            Image(systemName: self.isPasswordHide2 ?  "eye.fill":"eye.slash.fill")
                        }.offset(x:-20, y:0)
                        
                    }
                    
                }
                
                Section(header: Text("Email address")){
                    TextField("Enter your email", text: $email)
                        .keyboardType(.emailAddress)
                        .textContentType(.emailAddress)
                    
                }
                    
                Section(header: Text("User information")){
                    TextField("Enter your phoneNumber", text: $phoneNumber)
                        .keyboardType(.numbersAndPunctuation)
                        .textContentType(.telephoneNumber)
                    
                    TextField("Enter your lastname", text: $lastName)
                    
                    TextField("Enter your firstname", text: $firstName)
                    
                }
                Section(header: Text("Role")){
                    Toggle(isOn: $isCook){
                        Text("Cook account")
                    }
                }
                if showErrorMsg {
                    Text(self.errorMsg)
                        .foregroundColor(Color.red)
                }
            
                HStack{
                    Spacer()
                    Button("Register",
                           action: {
                            self.showErrorMsg = !self.checkAllFieldAreValid()
                            if !self.showErrorMsg{
                                print("Register")
                            }else {
                                print("can't register")
                            }
                    })
                    Spacer()
                }
                
            }.navigationBarTitle("Register")
            
        }
    }
    
    func checkAllFieldAreValid() -> Bool{
        var isPasswordValid: Bool {
            if password1 != password2 {
                errorMsg="Password doesn't match"
                return false
            }
            if password1.isEmpty {
                errorMsg="You can't leave a field empty"
                return false
            }
            return true
        }
        
        var isPoneNbValid: Bool {
            if checkPhoneNumber(){
                return true
                
            }
            errorMsg="Your phone number is invalid"
            return false
        }
        
        let isEmailValid: Bool=isValidEmail()
        if !isEmailValid {
            errorMsg="Your email address is invalid"
        }
        
        return isPasswordValid &&
            !username.isEmpty &&
            checkPhoneNumber() &&
            !lastName.isEmpty &&
            !firstName.isEmpty &&
            isEmailValid
        
    }
    
    func checkPhoneNumber()->Bool{
        return phoneNumber.rangeOfCharacter(from: NSCharacterSet.decimalDigits.inverted)==nil
    
    }
    
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: self.email)
    }
}

struct RegisterScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterScreen()
    }
}
