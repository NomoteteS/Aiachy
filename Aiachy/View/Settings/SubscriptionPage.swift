//
//  SubscriptionSettings.swift
//  Aiachy
//
//  Created by NomoteteS on 13.10.2022.
//

import SwiftUI

struct SubscriptionPage: View {
      
    var body: some View {
        
            ZStack {
                Color("BC")
                    .ignoresSafeArea()
                VStack {
                    Button {
                        // action
                    } label: {
                       Image("ZodiacSubs")
                            .resizable()
                            .frame(width: 326,height: 142)
                    }
                }.toolbar(.hidden, for: .tabBar)
                .toolbar {
                    NavigationLink(destination: NavAppRouter1()) {
                        HStack{
                            Image(systemName: "chevron.left")
                                .resizable()
                                .frame(width: 7, height: 15)
                                .foregroundColor(Color("2C"))
                                .padding(.leading,16)
                            
                            Text("Subscription")
                                .foregroundColor(Color("2C"))
                                .font(.Medium18)
                                .padding(.leading,18)
                        }.frame(width: 300, alignment: .leading)
                            .padding(.trailing,45)
                    }
                }
            }.navigationBarBackButtonHidden(true)
    }
}

struct SubscriptionPage_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionPage()
    }
}
