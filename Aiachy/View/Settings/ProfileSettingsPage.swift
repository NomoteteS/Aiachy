//
//  ProfileSettingsPage.swift
//  Aiachy
//
//  Created by NomoteteS on 9.10.2022.
//

import SwiftUI

struct ProfileSettingsPage: View {
    
    @State private var name : String = ""
    @State private var TimeOfBirth : String = ""
    @State private var Location : String = ""
    @State private var Hobbies : String = ""
    @State private var Married : String = ""
    @State private var isAvtivate : Bool = false
    @State private var pImage : Image = Image("")
    
    var body: some View {
        ZStack {
            Color("BC")
                .ignoresSafeArea()
            VStack {
                HStack {
                    HStack {
                        Image("turkeyFlag")
                            .frame(width: 88,height: 88)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.gray,lineWidth: 2).frame(width: 88,height: 88))

                            VStack(alignment: .leading) {
                                Text("Hanna Series")
                                    .font(.Medium12)
                                    .foregroundColor(Color("1C"))
                                    .padding(.bottom,8)
                                Text("Aries")
                                    .foregroundColor(Color("1C"))
                            }
                    }
                    .position()
                    .padding(.leading,50)
                }.padding(.bottom,40)
                    .frame(width: 235,height: 50)
                    
                //MARK: - Name
                Button {
                    //action
                } label: {
                    Image(systemName: "person")
                        .padding(.leading,11)
                    
                    TextField("Name", text: $name)
                        .font(.Medium12)
                    
                }.buttonStyle(ButtonStyleThreeSelected())
                    .padding(.bottom,16)

                HStack {
                    Button {
                        //action
                    } label: {
                        Text("02")
                            .font(.Medium12)
                            .padding(.leading,6)
                        
                        Image(systemName: "arrow.right")
                            .padding(.leading,25)
                        
                    }.buttonStyle(ButtonStyleThreeSmallNoSelected())
                    
                    Spacer()
                    
                    Button {
                        //action
                    } label: {
                        Text("Ekim")
                            .font(.Medium12)
                            .padding(.leading,6)
                        
                        Image(systemName: "arrow.right")
                            .padding(.leading,25)
                        
                    }.buttonStyle(ButtonStyleThreeSmallNoSelected())
                    
                    Spacer()
                    
                    Button {
                        //action
                    } label: {
                        Text("1998")
                            .font(.Medium12)
                            .padding(.leading,6)
                        
                        Spacer()
                        
                        Image(systemName: "arrow.right")
                            
                        
                    }.buttonStyle(ButtonStyleThreeSmallNoSelected())

                }.padding(.bottom,16)
                    .frame(width: 335)
                
                //MARK: - Time Of Birth
                Button {
                    //action
                } label: {
                    Image(systemName: "clock")
                        .padding(.leading,11)
                    
                    TextField("Time Of Birth", text: $name)
                        .font(.Medium12)
                    
                    Image(systemName: "arrow.right")
                        .padding(.trailing,12)
                    
                }.buttonStyle(ButtonStyleThreeNoSelected())
                    .padding(.bottom,16)
                
                //MARK: - Location
                Button {
                    //action
                } label: {
                    Image(systemName: "location")
                        .padding(.leading,11)
                    
                    TextField("Location", text: $name)
                        .font(.Medium12)
                    
                    Image(systemName: "arrow.right")
                        .padding(.trailing,12)
                    
                }.buttonStyle(ButtonStyleThreeNoSelected())
                    .padding(.bottom,16)
                
                //MARK: - Hobbies
                Button {
                    //action
                } label: {
                    Image(systemName: "star")
                        .padding(.leading,11)
                    
                    TextField("Hobbies", text: $name)
                        .font(.Medium12)
                    
                    Image(systemName: "arrow.right")
                        .padding(.trailing,12)
                    
                }.buttonStyle(ButtonStyleThreeNoSelected())
                    .padding(.bottom,16)
                
                //MARK: - Married
                Button {
                    //action
                } label: {
                    Image(systemName: "heart")
                        .padding(.leading,11)
                    
                    TextField("Married", text: $name)
                        .font(.Medium12)
                    
                    Image(systemName: "arrow.right")
                        .padding(.trailing,12)
                    
                }.buttonStyle(ButtonStyleThreeNoSelected())
                    .padding(.bottom,80)
                
                //MARK: - Save Button
                
                Button {
                    // action
                } label: {
                    Text("Save")
                }.buttonStyle(ButtonStyleOne())
            }.navigationBarBackButtonHidden(true)
                .toolbar(.hidden, for: .tabBar)
                .toolbar {
                    NavigationLink(destination: NavAppRouter1()) {
                        HStack{
                            Image(systemName: "chevron.left")
                                .resizable()
                                .frame(width: 7,height: 15)
                                .foregroundColor(Color("2C"))
                                .padding(.leading,16)
                                
                            
                            Text("Profile Settings")
                                .foregroundColor(Color("2C"))
                                .font(.Medium18)
                                .padding(.leading,18)
                        }.frame(width: 380, alignment: .leading)
                    }
                }
        }
    }
}

struct ProfileSettingsPage_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSettingsPage()
    }
}
