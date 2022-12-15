//
//  SubscriptionPage.swift
//  Aiachy
//
//  Created by NomoteteS on 10.10.2022.
//

import SwiftUI

struct SubscriptionSectionPage: View {
    var body: some View {
        NavigationView {
            ZStack{
                Color("BC")
                    .ignoresSafeArea()
                VStack{
                    
                    // MARK: - Navigation
                    HStack {
                        NavigationLink(destination: SettingsSectionPage()) {
                            
                            HStack {
                                Image("SettingsIcon")
                                    .resizable()
                                    .frame(width: 28,height: 28)
                                    .padding(.trailing,6)
                                
                                Text("Settings")
                                    .font(.Medium12)
                                    .foregroundColor(Color("2C"))
                            }
                        }.buttonStyle(ButtonStyleTwoSlimNoSelected())
                        ZStack {
                            HStack {
                                Image("SubscriptionIcon")
                                    .resizable()
                                    .frame(width: 28,height: 28)
                                    .padding(.trailing,6)
                                
                                Text("Subscription")
                                    .font(.Medium12)
                                    .foregroundColor(Color("2C"))
                            }
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("2C"))
                        }.frame(width: 128,height: 44)
                            .background(.white)
                            .padding(.trailing,16)
                        
                    }.padding(.bottom,20)
                    
                    // MARK: - Payment Method
                    NavigationLink(destination: PaymentMethodsPage()) {
                        HStack() {
                            Image(systemName: "creditcard")
                                .resizable()
                                .frame(width: 20,height: 19)
                                .padding(.trailing,17)
                            
                            VStack(alignment: .leading) {
                                Text("Payment Methos")
                                    .font(.Medium12)
                                    .padding(.bottom,6)
                                    .foregroundColor(.gray)
                                
                                Text("Mert Türedü")
                                    .font(.Medium14)
                                    .foregroundColor(Color("1C"))
                            }
                            Image(systemName: "arrow.right")
                                .padding(.leading,150)
                        }
                    }.buttonStyle(ButtonStyleTwo())
                        .padding(.bottom,18)
                      
                    
                    
                    // MARK: - Subscription
                    NavigationLink(destination: SubscriptionPage()) {
                        HStack {
                            Image(systemName: "dollarsign.arrow.circlepath")
                                .padding(.trailing,17)
                            
                            VStack(alignment: .leading) {
                                Text("Subscription")
                                    .font(.Medium12)
                                    .padding(.bottom,4)
                                    .foregroundColor(.gray)
                                
                                Text("Current Subs")
                                    .font(.Medium14)
                                    .foregroundColor(Color("1C"))
                                
                                Text ("None")
                                    .font(.Medium12)
                                    .foregroundColor(Color("1C"))
                            }
                            Image(systemName: "arrow.right")
                                .padding(.leading,150)
                        }
                    }.buttonStyle(ButtonStyleTwo())
                        .padding(.bottom,18)
                    
          
                    // MARK: - Contact
                    NavigationLink(destination: ContactPage()) {
                        HStack {
                            Image(systemName: "envelope.fill")
                                .padding(.trailing,17)
                            
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
        }
        .navigationBarBackButtonHidden(true)
            
    }
}


struct SubscriptionSectionPage_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionSectionPage()
    }
}
