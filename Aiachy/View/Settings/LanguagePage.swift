//
//  LanguagePage.swift
//  Aiachy
//
//  Created by NomoteteS on 9.10.2022.
//

import SwiftUI
import UIKit

@available(iOS 16.0, *)
struct LanguagePage: View {
    var body: some View {
        
        ZStack{
            Color("BC")
                .ignoresSafeArea()
            
            VStack {
                
                //MARK: - English
                Button {
                    //Action
                } label: {
                    HStack(alignment: .center) {
                        Image("englandFlag")
                            .resizable()
                            .frame(width: 26,height: 26)
                        
                        Text("English")
                            .font(.Medium12)
                        
                        Spacer()
                        Image("Tick-Circle")
                            .resizable()
                            .frame(width: 24,height: 24)
                        
                    }.frame(width: 244)
                }.buttonStyle(ButtonStyleThreeSelected())
                
                //MARK: - France
                Button {
                    //Action
                } label: {
                    HStack(alignment: .center) {
                        Image("franceFlag")
                            .resizable()
                            .frame(width: 26,height: 26)
                        
                        Text("Français")
                            .font(.Medium12)
                        
                        Spacer()
                        Text("Soon")
                            .font(.Medium14)
                            .foregroundColor(Color("3C"))
                        
                    }.frame(width: 244)
                }.buttonStyle(ButtonStyleThreeSelected())
                
                //MARK: -
                Button {
                    //Action
                } label: {
                    HStack(alignment: .center) {
                        Image("spainFlag")
                            .resizable()
                            .frame(width: 26,height: 26)
                        
                        Text("Español")
                            .font(.Medium12)
                        
                        Spacer()
                        Text("Soon")
                            .font(.Medium14)
                            .foregroundColor(Color("3C"))
                        
                    }.frame(width: 244)
                }.buttonStyle(ButtonStyleThreeSelected())
                
                //MARK: -
                Button {
                    //Action
                } label: {
                    HStack(alignment: .center) {
                        Image("turkeyFlag")
                            .resizable()
                            .frame(width: 26,height: 26)
                        
                        Text("Türkçe")
                            .font(.Medium12)
                        
                        Spacer()
                        Text("Soon")
                            .font(.Medium14)
                            .foregroundColor(Color("3C"))
                        
                    }.frame(width: 244)
                }.buttonStyle(ButtonStyleThreeSelected())
            }
        }.navigationBarBackButtonHidden(true)
            .toolbar(.hidden, for: .tabBar)
            .toolbar(){
                NavigationLink(destination: NavAppRouter1()) {
                    HStack{
                        Image(systemName: "chevron.left")
                            .resizable()
                            .frame(width: 7, height: 15)
                            .foregroundColor(Color("2C"))
                            .padding(.leading,38)
                        
                        Text("Language")
                            .foregroundColor(Color("2C"))
                            .font(.Medium18)
                            .padding(.leading,18)
                    }.frame(width: 380, alignment: .leading)
                }
            }
    }
}

// 2. ve 3. NavAppRouter oluşturup hepsinisi settingsi oluştur.

struct LanguagePage_Previews: PreviewProvider {
    @available(iOS 16.0, *)
    static var previews: some View {
        LanguagePage()
    }
}

