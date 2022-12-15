//
//  WellcomePage.swift
//  Aiachy
//
//  Created by NomoteteS on 27.09.2022.
//

import SwiftUI

struct WellcomePage: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color("BC")
                    .ignoresSafeArea()
                Image("WellcomePageBackVector")
                    .resizable()
                VStack{
                    Image("WellcomePageVector")
                        .resizable()
                        .frame(width: 362,height: 358)
                        .padding(.bottom,32)
                        .padding(.top,82)
                    
                    // MARK: - Title
                    Text("Were you one of those who saw the future?")
                        .font(.Semibold24)
                        .foregroundColor(Color("1C"))
                        .frame(width: 311) .multilineTextAlignment(.center)
                        .scaledToFill()
                        .padding(.horizontal,32) .padding(.bottom,45)
                    
                    NavigationLink(destination: LoginPage()) {
                        Text("Login")
                    }
                    .buttonStyle(ButtonStyleOne())
                    .padding(.bottom,15)
                    
                    NavigationLink(destination: SetUpFirstPage()) {
                        Text("Sign Up")
                    }
                    .buttonStyle(ButtonStyleOne())
                    .padding(.bottom,103)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct WellcomePage_Previews: PreviewProvider {
    static var previews: some View {
        WellcomePage()
    }
}
