//
//  NavAppRouter1.swift
//  Aiachy
//
//  Created by NomoteteS on 16.11.2022.
//

import SwiftUI

struct NavAppRouter1: View {
    
    @State private var selelectionSetting = tags.tag4.self
    
    enum tags {
        case tag1,tag2,tag3,tag4
    }
    
    var body: some View {
        TabView(selection: $selelectionSetting){
            MainPage().tabItem() {
                if selelectionSetting == tags.tag1 {
                    Image("HomeSelected")
                }else{Image("Home") }
                Text("Home")
            }.tag(tags.tag1)
            AiachyLoveOnMaintancePage().tabItem {
                if selelectionSetting == tags.tag2 {
                    Image("AiachyLoveSelected")
                }else{ Image("AiachyLove") }
                Text("Date")
            }.tag(tags.tag2)
            MysticPage().tabItem {
                if selelectionSetting == tags.tag3  {
                    Image("MysticSelected")
                }else{ Image("Mystic") }
                Text("Mystic")
            }.tag(tags.tag3)
            SettingsSectionPage().tabItem {
                if selelectionSetting == tags.tag4 {
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


struct NavAppRouter1_Previews: PreviewProvider {
    static var previews: some View {
        NavAppRouter1()
    }
}
