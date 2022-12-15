//
//  Attention.swift
//  Aiachy
//
//  Created by NomoteteS on 13.08.2022.
//

import SwiftUI

struct AttentionPage: View {
    var body: some View {
        NavigationView {
        ZStack {
            Color("BC")
                .ignoresSafeArea()
            VStack{
                Image("AttentionPageBird")
                    .resizable()
                    .frame(width: 347.24, height: 347.24, alignment: .top)
                    .padding(.bottom,13)
                    .padding(.top, 26)
                VStack {
                    Text("ATTENTION")
                        .padding(.bottom,16)
                        .font(Font.Black18)
                        .foregroundColor(Color("3C"))
                    
                    Text("The application is still not fully logged out. It is very normal to encounter bugs. If you encounter and want to look for a solution. You can send it to us quickly from the Help section. The app will appear for the first and only time in this genre with your support. Don't forget to have fun while using the app.")
                        .padding(.bottom,31)
                        .font(.system(size: 14).bold())
                        .foregroundColor(Color("1C"))
                    
                    Link("Update comes on 21st of every month Check Our Twitter",destination: URL(string: "https://twitter.com/AiachyOfficial")!)
                        .padding(.bottom,76)
                        .foregroundColor(Color("2C"))
                        .font(.Semibold14)
                    
                    NavigationLink(destination: NavAppRouter()) {
                        Text("Continue")
                    }
                    .buttonStyle(ButtonStyleOne())
                    .padding(.bottom,103)
                }
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
                .padding([.leading, .trailing], 45)
                .lineLimit(nil)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct Attention_Previews: PreviewProvider {
    static var previews: some View {
        AttentionPage()
    }
}
