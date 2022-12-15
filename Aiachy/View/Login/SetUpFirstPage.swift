//
//  SetUpFirst.swift
//  Aiachy
//
//  Created by NomoteteS on 13.08.2022.
//

import SwiftUI
import Firebase

struct SetUpFirstPage: View {
        
    var body: some View {
        NavigationView {
        ZStack {
            Color("BC")
                .ignoresSafeArea()
            Image("SetupPagesBackground")
                .resizable()
            VStack{
                Text("The time has come to learn your future")
                    .font(.Semibold24)
                    .frame(width: 300)
                    .padding(.bottom,40)
                    
                
                ZodiacSetup(zodiac: .aquarius)
                   
                    

                // MARK: - Button
                NavigationLink(destination: SetUpMiddlePage()) {
                    Text("Continue")
                }
                .buttonStyle(ButtonStyleOne())
                .padding(.bottom,103)
                
                }
            .multilineTextAlignment(.center)
            .fixedSize(horizontal: false, vertical: true)
            .padding([.leading, .trailing], -16)
            .lineLimit(nil)
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct SetUpFirst_Previews: PreviewProvider {
    static var previews: some View {
        SetUpFirstPage()
    }
}

