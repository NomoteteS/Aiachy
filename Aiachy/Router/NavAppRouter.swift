//
//  TabAppRouter.swift
//  Aiachy
//
//  Created by NomoteteS on 25.09.2022.
//

import SwiftUI

struct NavAppRouter: View {
    
    @State private var selection = tags.tag1.self
    
    enum tags {
        case tag1,tag2,tag3,tag4
    }
    
    var body: some View {
        
        TabView(selection: $selection){
            MainPage().tabItem() {
                if selection == tags.tag1 {
                    Image("HomeSelected")
                }else{Image("Home") }
                Text("Home")
            }.tag(tags.tag1)
            AiachyLoveOnMaintancePage().tabItem {
                if selection == tags.tag2 {
                    Image("AiachyLoveSelected")
                }else{ Image("AiachyLove") }
                Text("Date")
            }.tag(tags.tag2)
            MysticPage().tabItem {
                if selection == tags.tag3  {
                    Image("MysticSelected")
                }else{ Image("Mystic") }
                Text("Mystic")
            }.tag(tags.tag3)
            SettingsSectionPage().tabItem {
                if selection == tags.tag4 {
                    Image("SettingsSelected")
                }else{ Image("Settings") }
                Text("Settings")
            }.tag(tags.tag4)
        }.accentColor(Color("1C"))
            .onAppear() {
                UITabBar.appearance().backgroundColor = .white
            }
        
    }
}

struct TabAppRouter_Previews: PreviewProvider {
    static var previews: some View {
        NavAppRouter()
    }
}
