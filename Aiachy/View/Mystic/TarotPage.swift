//
//  TarotPage.swift
//  Aiachy
//
//  Created by NomoteteS on 21.09.2022.
//

import SwiftUI

struct TarotPage: View {
    var body: some View {
        NavigationView{
            ZStack {
                Color("1C")
                    .ignoresSafeArea()
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct TarotsPage_Previews: PreviewProvider {
    static var previews: some View {
        TarotPage()
    }
}
