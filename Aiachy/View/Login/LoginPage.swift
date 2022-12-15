//
//  SignInPage.swift
//  Aiachy
//
//  Created by NomoteteS on 27.09.2022.
//

import SwiftUI
import Firebase

struct LoginPage: View {
    
    @State private var mail : String = ""
    @State private var password : String = ""
    @State private var UserIsLoggedIn : Bool = false
    
    func login() {
        Auth.auth().signIn(withEmail: mail, password: password) { result,error in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
    }
    
    func register() {
        Auth.auth().createUser(withEmail: mail, password: password) { result,error in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
    }
    
    var body: some View {
        if UserIsLoggedIn {
            NavAppRouter()
        }else {
            content
        }
    }
    
    var content: some View {
        
        NavigationView {
            ZStack {
                Color("BC")
                    .ignoresSafeArea()
                Image("LoginPageBackVector")
                    .resizable()
                VStack {
                    
                    //MARK: - Image
                    Image("LoginPageVetor")
                        .resizable()
                        .frame(width: 324,height: 324)
                        .padding(.bottom,31)
                    
                    //MARK: - Title
                    Text("It's good to see you with us again")
                        .font(.Semibold24)
                        .foregroundColor(Color("1C"))
                        .frame(width: 311) .multilineTextAlignment(.center)
                        .scaledToFill()
                        .padding(.horizontal,32) .padding(.bottom,55)
                    
                    
                    //MARK: - EmailField
                    TextField("Email",text: $mail)
                        .font(.Regular12)
                        .padding(.leading,64)
                    Rectangle()
                        .frame(width: 267,height: 1)
                        .foregroundColor(Color("2C"))
                        .padding(.bottom,28)
                    
                    //MARK: - PasswordField
                    SecureField("Password", text: $password)
                        .font(.Regular12)
                        .padding(.leading,64)
                    Rectangle()
                        .frame(width: 267,height: 1)
                        .foregroundColor(Color("2C"))
                        .padding(.bottom,49)
                    
                    Button {
                        login()
                    }label: {
                        Text("Login")
                    }
                    .buttonStyle(ButtonStyleOne())
                    .padding(.bottom,103)
                }
            }
        }.onAppear{
            Auth.auth().addStateDidChangeListener({ auth, user in
                if user != nil {
                    UserIsLoggedIn.toggle()
                }
            })
        }
    }
}




struct SignInPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}


