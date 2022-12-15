//
//  ONBFirstPage.swift
//  Aiachy
//
//  Created by NomoteteS on 13.08.2022.
//

import SwiftUI

struct ONBFirstPage: View {
    @State private var isShowingDetailView = false
    var body: some View {
        NavigationView {
            ZStack {
                Color("BC")
                    .ignoresSafeArea()
                Image("ONBFirstPageBackVector")
                    .resizable()
                VStack{
                    // MARK: - Top Image
                    VStack(alignment: .center) {
                        Image("ONBFirstPageVector")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 343, height: 254.56, alignment: .center)
                            .padding(.bottom,57)
                            .padding(.top,116)
                        
                        // MARK: - Title
                        Text("You are in the heart of astrology")
                            .font(.Semibold24).opacity(0.8)
                            .foregroundColor(Color("1C"))
                            .frame(width: 343, height: 60)
                            .padding(.bottom,34)
                        
                        // MARK: - Text
                        Text("Knowing your horoscope better allows you to make better plans for the future. Knowing your horoscope better allows you to make better plans for the future.")
                            .font(.Regular12)
                            .foregroundColor(Color("1C"))
                            .frame(width: 327, height: 60)
                            .padding(.bottom,34)
                        
                        //MARK: - Switch
                        Image("Switch")
                            .resizable()
                            .frame(width: 33, height: 5, alignment: .center)
                            .fixedSize()
                            .padding(.bottom,40)
                        
                        // MARK: - Button
                        NavigationLink(destination: ONBLastPage()) {
                            Text("Continue")
                        }
                        .buttonStyle(ButtonStyleOne())
                        .padding(.bottom,103)
                    }
                    .multilineTextAlignment(.center)
                    .padding([.leading, .trailing], -16)
                    .lineLimit(nil)
                }
            }
        }
    }
}

struct ONBFirstPage_Previews: PreviewProvider {
    static var previews: some View {
        ONBFirstPage()
    }
}


//                        NavigationView{
//                            NavigationLink(destination: ONBLast()) {
//                    Button {
//                        isShowingDetailView = true
//
//                    } label: {
//                        Text("Countinue")
//                    }
//                    .padding(.bottom, 103.0)
//                    .buttonStyle(SetButtonStyle())
//                            }
//                        }
