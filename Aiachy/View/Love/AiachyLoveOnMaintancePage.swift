//
//  SwiftUIView.swift
//  Aiachy
//
//  Created by NomoteteS on 13.08.2022.
//

import SwiftUI

struct AiachyLoveOnMaintancePage: View {
    var body: some View {
        ZStack{
            Color("BC")
                .ignoresSafeArea()
            VStack{
            Image("OnMaintanceLove")
            .resizable()
            .scaledToFill()
            }
        }
    }
}

struct AiachyLoveOnMaintance_Previews: PreviewProvider {
    static var previews: some View {
        AiachyLoveOnMaintancePage()
    }
}
