//
//  LoadingScreen.swift
//  Aiachy
//
//  Created by NomoteteS on 27.07.2022.
//

import SwiftUI

struct LoadingScreenPage: View {
    var body: some View {
        ZStack {
            Color("BC")
                .ignoresSafeArea()
            
            //MARK: - Loading Decorative
            Image("Top-left")
                .resizable()
                .frame(width: 147.5, height: 241.64,alignment: .topLeading)
                .position(x: 30, y: 179)
            
            Image("Bottom-right")
                .resizable()
                .frame(width: 146.37, height: 241.64,alignment: .bottomTrailing)
                .position(x: 400, y: 600)
                .padding(.trailing,10)
            
            //MARK: - Logo
            HStack(alignment: .center){
                Image("Logo")
                    .resizable()
                    .interpolation(.high)
                    .frame(width: 200.44, height: 204.83, alignment: .center)
                    .scaledToFill()
                   
                    
            }
        }
    }
}

struct LoadingScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoadingScreenPage()
    }
}
