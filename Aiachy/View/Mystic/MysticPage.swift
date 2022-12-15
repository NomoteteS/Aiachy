//
//  MysticPage.swift
//  Aiachy
//
//  Created by NomoteteS on 27.08.2022.
//

import SwiftUI

struct MysticPage: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("BC")
                    .ignoresSafeArea()
                VStack {
                    //MARK: - Tarot
                    VStack{
                        NavigationLink(destination: TarotPage()) {
                            Image("TarotImage")
                                .resizable()
                                .frame(width: 315.0, height: 146.0)
                                .padding(.bottom,25)
                        }
                        //MARK: - Palmisty

                            Image("PamistryImage")
                                .resizable()
                                .frame(width: 315.0, height: 146.0)
                                .padding(.bottom,25)

                        //MARK: - CoffeFortune
                            Image("CoffeeFortuneImage")
                                .resizable()
                                .frame(width: 315.0, height: 146.0)
                                .padding(.bottom,161)
                    }
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true)
                    
                }
            }
        }
    }
}

struct MysticPage_Previews: PreviewProvider {
    static var previews: some View {
        MysticPage()
    }
}
