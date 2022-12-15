//
//  MainPage.swift
//  Aiachy
//
//  Created by NomoteteS on 21.08.2022.
//

import SwiftUI

struct MainPage: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color("BC")
                    .ignoresSafeArea()
                
                Image("MainBackground")
                    .resizable()
                    .frame(width: 375, height: 347)
                    .opacity(4)
                
                // MARK: - Top Deatils
                VStack{
                    ZStack {
                        Image("TopMainBackground")
                            .resizable()
                            .frame(width: 425 ,height: 174, alignment: .top)
                            .fixedSize()
                            .padding(.init(top: 0, leading: 0, bottom: 12, trailing: 0))
                        
                        Text("Aries Horoscope")
                            .foregroundColor(.white)
                            .position(x:100,y:20)
                        
                        
                        Text("Compatibility")
                            .foregroundColor(.white)
                            .position(x:88,y:80)
                        
                        //MARK: - Compatibility
                        HStack {
                            ZStack {
                                HStack{
                                    Image("Light-Aries")
                                        .resizable()
                                        .frame(width: 30,height: 30)
                                    
                                    Text("Arires")
                                        .font(.Regular12)
                                        .foregroundColor(.white)
                                }
                                RoundedRectangle(cornerRadius: 18)
                                    .stroke(Color("2C"))
                            }.frame(width: 105,height: 42)
                            
                            ZStack {
                                HStack{
                                    Image("Light-Aries")
                                        .resizable()
                                        .frame(width: 30,height: 30)
                                    
                                    Text("Arires")
                                        .font(.Regular12)
                                        .foregroundColor(.white)
                                }
                                RoundedRectangle(cornerRadius: 18)
                                    .stroke(Color("2C"))
                                
                            }.frame(width: 105,height: 42)
                        }.position(x:140,y:130)
                        
                        //MARK: - Switch Zodiac
                        
                        ZStack {
                            VStack {
                                // Main Zodiac
                                
                                Button {
                                    // Action
                                } label: {
                                    ZStack {
                                        
                                        Image("WAries")
                                            .resizable()
                                            .frame(width: 30,height: 30)
                                            .zIndex(2)
                                        Circle()
                                            .strokeBorder(.white)
                                            .foregroundColor(Color("1C"))
                                        
                                        Circle()
                                            .foregroundColor(Color("1C").opacity(1))
                                        
                                    }
                                    .frame(width: 55)
                                }
                                
                                // Other Zodiac
                                
                                Button {
                                    // Action
                                } label: {
                                    ZStack {
                                        VStack{
                                            Image("WAries")
                                                .resizable()
                                                .frame(width: 30,height: 30)
                                            
                                        }.zIndex(3)
                                        
                                    }
                                    .frame(width: 55)
                                }
                                
                            }.frame(height: 100)
                                .padding(.bottom,10)
                            
                            Group{
                                RoundedRectangle(cornerRadius: 54)
                                    .stroke(.white)
                                
                                RoundedRectangle(cornerRadius: 54)
                                    .foregroundColor(Color("3C").opacity(0.5))
                            }
                            .frame(width: 61,height: 117)
                        }.position(x:360,y: 70)
                    }.frame(width: 425,height: 174)
                    
                    // MARK: - Select Timing
                    HStack {
                        
                        // Yesterday
                        
                        Button {
                            // Action
                        } label: {
                            ZStack {
                                Text("Yesterday")
                                    .font(.Regular12)
                                    .foregroundColor(Color("4C"))
                                
                                RoundedRectangle(cornerRadius: 18)
                                    .stroke(Color("2C"))
                                    .frame(width: 81,height: 36)
                            }
                        }
                        
                        // Yesterday
                        
                        Button {
                            // Action
                        } label: {
                            ZStack {
                                Text("Today")
                                    .font(.Regular12)
                                    .foregroundColor(Color("4C"))
                                
                                RoundedRectangle(cornerRadius: 18)
                                    .stroke(Color("2C"))
                                    .frame(width: 60,height: 36)
                            }
                        }
                        
                        // Yesterday
                        
                        Button {
                            // Action
                        } label: {
                            ZStack {
                                (Text("Tomorrow  ").font(.Regular12).foregroundColor(Color("4C"))) + Text(Image(systemName: "lock"))
                                    .font(.Regular12)
                                    .foregroundColor(Color("4C"))
                                
                                
                                RoundedRectangle(cornerRadius: 18)
                                    .stroke(Color("2C"))
                                    .frame(width: 107,height: 36)
                            }
                        }
                        
                        //MARK: - Week
                        
//                        Button {
//                            // Action
//                        } label: {
//                            ZStack {
//                                (Text("Week  ").font(.Regular12).foregroundColor(Color("4C"))) + Text(Image(systemName: "lock"))
//                                    .font(.Regular12)
//                                    .foregroundColor(Color("4C"))
//
//
//                                RoundedRectangle(cornerRadius: 18)
//                                    .stroke(Color("2C"))
//                                    .frame(width: 82,height: 36)
//                            }
//                        }
                        
                    }.padding(.bottom,17)
                        .frame(height: 36)
                    
                    // MARK: - Daily Massage
                    ZStack {
                        Image("Logo")
                            .resizable()
                            .frame(width: 110, height: 100)
                            .offset(CGSize(width: 150, height: 20))
                            .opacity(0.6)
                        
                        Text("Kendisini vazgeçilmez zannedenleri çok iyi yanıltır Akrep. O bir anda sevdiği gibi bir anda vazgeçebilir. Bu yüzden şayet bir Akrep’le beraberseniz onu her gün hak etmek için çabalamalısınız.")
                            .foregroundColor(Color("BC"))
                            .font(.Medium12)
                            .multilineTextAlignment(.center)
                            .frame(width: 313, height: 60, alignment: .center)
                            .padding(.horizontal,32)
                            .padding(.bottom, 20)
                            .scaledToFill()
                    }
                    .background(Color("1C"))
                    .frame(width: 343, height: 75, alignment: .top)
                    .cornerRadius(8)
                    .padding(.bottom,12)
                    
                    // MARK: - Line
                    RoundedRectangle(cornerRadius: 1)
                        .frame(width: 288,height: 0.9)
                        .foregroundColor(Color("2C"))
                        .padding(.bottom,4.5)
                    
                    HStack{
                        Image("")
                            .frame(width:62,height:73)
                        
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ultrices accumsan, ultrices curabitur enim in lacinia proin.")
                            .font(.Medium12)
                            .foregroundColor(Color("4C"))
                            .frame(width: 258,height: 60)
                        
                        // Slider
                    }.frame(width: 341,height: 80)
                        .padding(.bottom,4.5)
                    
                    
                    
                    // MARK: - Line 2
                    RoundedRectangle(cornerRadius: 1)
                        .frame(width: 288,height: 0.9)
                        .foregroundColor(Color("2C"))
                        .padding(.bottom,9.5)
                    
                    // MARK: - Moon Phases
                    HStack {
                        Image("")
                            .frame(width: 64,height: 64)
                        VStack{
                            Text("Moon Phase")
                                .foregroundColor(Color("2C"))
                                .font(.Medium12)
                                .padding(.trailing,170)
                            
                            
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ultrices accumsan, ultrices curabitur enim in lacinia proin.")
                                .foregroundColor(Color("4C"))
                                .font(.Medium12)
                        }
                        
                        
                    }.frame(width: 343,height: 64)
                        .padding(.bottom,14)
                    
                    HStack{
                        (Text("20 Ekim ").font(.Medium12).foregroundColor(Color("2C"))) +
                        Text("Karamsar ve düşünceli bir ruh haliniz olabilir. Hayatın bu şekilde yaşanmayacağının farkındasınız ama uygulama noktasında sorun yaşıyorsunuz. Bunu aşmanın yolu, sıklıkla takip ettiğiniz yolları").font(.Medium12)
                            
                    }.frame(width: 343,height: 80)
                    
                    Spacer()
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
