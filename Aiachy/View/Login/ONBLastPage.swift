//
//  ONBLastPage.swift
//  Aiachy
//
//  Created by NomoteteS on 13.08.2022.
//

import SwiftUI

struct ONBLastPage: View {
    var body: some View {
        NavigationView {
            ZStack{
                Color("BC")
                    .ignoresSafeArea()
                Image("ONBLastPageBackVector")
                    .resizable()
                VStack(alignment: .center) {
                    // MARK: - Image
                    Image("ONBLastPageVector")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 280, height: 280, alignment: .top)
                        .padding(.init(top: 100, leading: 46, bottom: 48, trailing: 46))
                    
                    VStack{
                        // MARK: - Title
                        Text("You are in the heart of astrology")
                            .font(.Semibold24).opacity(0.8)
                            .foregroundColor(Color("1C"))
                            .frame(width: 343, height: 60)
                            .padding(.bottom, 44 )
                        
                        // MARK: - Text
                        Text("Aiachy will guide you on a beautiful path and show you little tips about your future.")
                            .font(.Semibold14)
                            .foregroundColor(Color("1C"))
                            .frame(width: 327, height: 36)
                            .padding(.bottom,54)
                        
                        Image("Switch2")
                            .resizable()
                            .frame(width: 33, height: 5, alignment: .center)
                            .fixedSize()
                            .padding(.bottom,40)
                        
                        // MARK: - Button
                        NavigationLink(destination: WellcomePage()) {
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
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct ONBLastPage_Previews: PreviewProvider {
    static var previews: some View {
        ONBLastPage()
    }
}
