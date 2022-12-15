//
//  ContactPage.swift
//  Aiachy
//
//  Created by NomoteteS on 9.10.2022.
//

import SwiftUI

struct ContactPage: View {
    var body: some View {
        ZStack {
            Color("BC")
                .ignoresSafeArea()
            
            VStack {
                Button {
                    // Action
                } label: {
                    Image("Twitter")
                        .resizable()
                        .frame(width: 22,height: 18)
                    
                    
                    
                    Text("Twitter")
                        .font(.Medium14)
                    
                }.buttonStyle(ButtonStyleThreeNoSelected())
                    .padding(.bottom,20)
                
                
                Button {
                    // Action
                } label: {
                    Image(systemName: "envelope")
                        .resizable()
                        .frame(width: 22,height: 18)
                        .foregroundColor(Color("2C"))
                    
                    Text("Mail")
                        .font(.Medium14)
                }.buttonStyle(ButtonStyleThreeNoSelected())
                    .padding(.bottom,122)
                
                Text("Since I am doing the application alone, problems and problems may arise. I request you to please let me know the deficiencies you see in the application via twitter and via e-mail.")
                    .foregroundColor(Color("3C"))
                    .font(.Medium14)
                    .multilineTextAlignment(.center)
                    .padding(.bottom,300)
                    .frame(width: 260)
            }.navigationBarBackButtonHidden(true)
                .toolbar(.hidden, for: .tabBar)
                .toolbar {
                    NavigationLink(destination: NavAppRouter1()) {
                        HStack{
                            Image(systemName: "chevron.left")
                                .resizable()
                                .frame(width: 7, height: 15)
                                .foregroundColor(Color("2C"))
                            
                            Text("Contact")
                                .foregroundColor(Color("2C"))
                                .font(.Medium18)
                                .padding(.leading,18)
                        }.frame(width: 300, alignment: .leading)
                            .padding(.trailing,35)
                    }
                }
        }
    }
}

struct ContactPage_Previews: PreviewProvider {
    static var previews: some View {
        ContactPage()
    }
}
