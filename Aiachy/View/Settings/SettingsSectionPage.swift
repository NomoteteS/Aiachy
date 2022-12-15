//
//  SettingsPage.swift
//  Aiachy
//
//  Created by NomoteteS on 25.08.2022.
//

import SwiftUI

struct SettingsSectionPage: View {
    
    @State private var NameUser : String = ""
    @State private var selection : Int = 0
    
    @State private var tabBar : UITabBar! = nil
    
    
    var body: some View {
            NavigationView {
                ZStack {
                    Color("BC")
                        .ignoresSafeArea()
                    VStack {
                        
                        //MARK: - Navigation
                        HStack {
                            ZStack {
                                HStack {
                                    Image("SettingsIcon")
                                        .resizable()
                                        .frame(width: 28,height: 28)
                                        .padding(.trailing,12)
                                    
                                    Text("Settings")
                                        .font(.Medium12)
                                        .foregroundColor(Color("2C"))
                                    
                                }
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color("2C"))
                                
                            }.frame(width: 128,height: 44)
                                .background(.white)
                                .padding(.trailing,16)
                            
                            NavigationLink(destination: SubscriptionSectionPage()) {
                                
                                HStack {
                                    Image("SubscriptionIcon")
                                        .resizable()
                                        .frame(width: 28,height: 28)
                                        .padding(.trailing,6)
                                    
                                    Text("Subscription")
                                        .font(.Medium12)
                                        .foregroundColor(.gray)
                                }
                            }.buttonStyle(ButtonStyleTwoSlimNoSelected())
                        }.padding(.bottom,20)
                        
                        //MARK: - Profile Settings
                        NavigationLink(destination: ProfileSettingsPage()) {
                            HStack{
                                Image(systemName: "person")
                                    .foregroundColor(Color("1C"))
                                    .padding(.trailing,16)
                                VStack(alignment: .leading){
                                    
                                    Text("Profile Settings")
                                        .font(.Medium12)
                                        .foregroundColor(.gray)
                                        .padding(.bottom,6)
                                    
                                    Text("Mert Türedü")
                                        .font(.Medium14)
                                        .foregroundColor(Color("4C"))
                                }
                                Image(systemName: "arrow.right")
                                    .padding(.leading,150)
                            }
                        }.buttonStyle(ButtonStyleTwo())
                            .padding(.bottom,18)
                        
                        //MARK: - Language
                        NavigationLink(destination: LanguagePage()) {
                            HStack{
                                Image(systemName:"globe")
                                    .foregroundColor(Color("1C"))
                                    .padding(.trailing,16)
                                
                                VStack(alignment: .leading){
                                    Text("Language")
                                        .font(.Medium12)
                                        .foregroundColor(.gray)
                                        .padding(.bottom,6)
                                    
                                    Text("English United")
                                        .font(.Medium14)
                                        .foregroundColor(Color("4C"))
                                    
                                }
                                Image(systemName: "arrow.right")
                                    .padding(.leading,150)
                            }
                        }.buttonStyle(ButtonStyleTwo())
                            .padding(.bottom,18)
                        
                        //MARK: - Contact
                        NavigationLink(destination: ContactPage()) {
                            HStack {
                                Image(systemName: "envelope.fill")
                                    .padding(16)
                                VStack(alignment: .leading) {
                                    Text("Contact")
                                        .font(.Medium12)
                                        .foregroundColor(.gray)
                                        .padding(.bottom,6)
                                    
                                    Text("Contact Us")
                                        .font(.Medium14)
                                        .foregroundColor(Color("1C"))
                                }
                            }
                        }.buttonStyle(ButtonStyeTwoSmall())
                            .padding(.bottom,77)                            
                        
                        //MARK: - Logout Buttonπ
                        Button {
                            // Action
                        } label: {
                            Image(systemName: "rectangle.portrait.and.arrow.right")
                                .foregroundColor(.black)
                                .padding(.trailing,8)
                            
                            Text("Logout")
                                .foregroundColor(.black)
                        }.overlay {
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(Color("4C"))
                                .frame(width: 343,height: 52)
                                .foregroundColor(.none)
                        }
                    }
                }
            }.navigationBarBackButtonHidden(true)
                .navigationBarHidden(true)
        }
    }



struct SettingsSectionPage_Previews: PreviewProvider {
    static var previews: some View {
        SettingsSectionPage()
    }
}
