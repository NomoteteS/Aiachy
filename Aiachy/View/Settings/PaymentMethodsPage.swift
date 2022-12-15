//
//  PaymentMethodsPage.swift
//  Aiachy
//
//  Created by NomoteteS on 16.10.2022.
//

import SwiftUI

struct PaymentMethodsPage: View {
    var body: some View {
        ZStack{
            Color("BC")
                .ignoresSafeArea()
            VStack {
                PaymentButton(action: {})
            }
        }.navigationBarBackButtonHidden(true)
            .toolbar(.hidden, for: .tabBar)
        .toolbar {
            NavigationLink(destination: NavAppRouter1()) {
                HStack{
                    Image(systemName: "chevron.left")
                        .resizable()
                        .frame(width: 7, height: 15)
                        .foregroundColor(Color("2C"))
                        .padding(.leading,16)
                    
                    Text("Payment Method")
                        .foregroundColor(Color("2C"))
                        .font(.Medium18)
                        .padding(.leading,18)
                }.frame(width: 300, alignment: .leading)
                    .padding(.trailing,40)
            }
        }
    }
}

struct PaymentMethodsPage_Previews: PreviewProvider {
    static var previews: some View {
        PaymentMethodsPage()
    }
}


