//
//  SetUpLastPage.swift
//  Aiachy
//
//  Created by NomoteteS on 27.09.2022.
//

import SwiftUI
import Firebase

struct SetUpLastPage: View {
    
    @State private var name : String = ""
    @State private var surname : String = ""
    @State private var email : String = ""
    @State private var password : String = ""
    
    var body: some View {
        NavigationView {
            ZStack{
                Color("BC")
                    .ignoresSafeArea()
                Image("SetupPagesBackground")
                    .resizable()
                VStack{
                    VStack{
                        //MARK: - TITTLE
                        Text("To we remember you again")
                            .multilineTextAlignment(.center)
                            .font(.Semibold24)
                            .foregroundColor(Color("1C"))
                            .padding(.bottom,137)
                            .padding(.top,100)
                        
                        HStack {
                            VStack{
                                //MARK: - Questions
                                TextField("Name",text: $name)
                                    .padding(.leading,65)
                                
                                Rectangle()
                                    .foregroundColor(Color("2C"))
                                    .frame(width: 115,height: 1)
                                    .padding(.leading,50)
                            }
                            Spacer()
                            VStack{
                                TextField("Surname",text: $surname)
                                    .padding(.leading,15)
                                
                                Rectangle()
                                    .foregroundColor(Color("2C"))
                                    .frame(width: 115,height: 1)
                                    .padding(.trailing,50)
                            }
                        }
                        .padding(.bottom,28)
                        
                        TextField("Email",text: $email)
                            .padding(.leading,65)
                        Rectangle()
                            .foregroundColor(Color("2C"))
                            .frame(width: 267,height: 1)
                            .padding(.bottom,28)
                        
                        //MARK: - PasswordField
                        SecureField("Password",text: $password)
                            .padding(.leading,65)
                        Rectangle()
                            .foregroundColor(Color("2C"))
                            .frame(width: 267,height: 1)
                            .padding(.bottom,28)
                        
                        SecureField("Password",text: $password)
                            .padding(.leading,65)
                        Rectangle()
                            .foregroundColor(Color("2C"))
                            .frame(width: 267,height: 1)
                            .padding(.bottom,28)
                    }.padding(.bottom,102)
                    
                    NavigationLink(destination: NavAppRouter()) {
                        Text("Finish")
                    }.buttonStyle(ButtonStyleOne())
                        .padding(.bottom,22)
                    
                    // MARK: - Privacy Policy
                    Group { Text("The data you submit will be processed in accordance with our") + Text(" Privacy Policy").foregroundColor(Color("1C")) + Text(". By continuing you agree to ") + Text("Terms of Service.").foregroundColor(Color("1C")) }
                        .font(.Light)
                        .foregroundColor(Color.gray)
                        .frame(width: 308, height: 55)
                        .padding(.bottom,59)
                    
                }
                .font(.Regular12)
            }
        }
    }
}

struct SetUpLastPage_Previews: PreviewProvider {
    static var previews: some View {
        SetUpLastPage()
    }
}
