//
//  SetUpLast.swift
//  Aiachy
//
//  Created by NomoteteS on 13.08.2022.
//

import SwiftUI
import Firebase

struct SetUpMiddlePage: View {
    
    @State private var BirthDay: String = ""
    @State private var TimeOfBirth: String = ""
    @State private var Country: String = ""
    @State private var City: String = ""
    
    var body: some View {
        NavigationView {
        ZStack {
                // MARK: - Background
            Color("BC")
                .ignoresSafeArea()
            Image("SetupPagesBackground")
                .resizable()
            VStack{
                //MARK: - Title
                    Text("Some information is needed to know better Who You Are.")
                        .font(.Semibold24)
                        .foregroundColor(Color("1C"))
                        .padding(.bottom,159)
                HStack {
                    VStack {
                        TextField("Birthday",text: $BirthDay )
                            .font(.Regular11)
                        Rectangle()
                            .foregroundColor(Color("2C"))
                            .frame(width: 115,height: 1)
                            .padding(.bottom,41)
                        
                        TextField("Time Of birth",text: $TimeOfBirth )
                            .font(.Regular11)
                        Rectangle()
                            .foregroundColor(Color("2C"))
                            .frame(width: 115,height: 1)
                            .padding(.bottom,41)
                        
                            TextField("Country",text: $Country )
                            .font(.Regular11)
                            Rectangle()
                                .foregroundColor(Color("2C"))
                                .frame(width: 115,height: 1)
                                .padding(.bottom,41)
                        
                        TextField("Country",text: $City )
                        .font(.Regular11)
                        Rectangle()
                            .foregroundColor(Color("2C"))
                            .frame(width: 115,height: 1)
                    }
                    Image("Light-Scorpio")
                        .resizable()
                        .frame(width: 98,height: 98)
                }
                .frame(width: 252,height: 149)
                .padding(.bottom,174)
                    
                // MARK: - Button
                NavigationLink(destination: AttentionPage()) {
                    Text("Continue")
                }
                .buttonStyle(ButtonStyleOne())
                .padding(.bottom,22)
                
               
                }
            }
        .multilineTextAlignment(.center)
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct SetUpLast_Previews: PreviewProvider {
    static var previews: some View {
        SetUpMiddlePage()
    }
}
