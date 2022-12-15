//
//  Buttons.swift
//  Aiachy
//
//  Created by NomoteteS on 16.08.2022.
//

import Foundation
import SwiftUI


// MARK: - One Button Style W: 343 , H: 50 , R: 8

struct ButtonStyleOne: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Divider()
            configuration.label
            }
        .frame(width: 343, height: 50)
        .background(Color("1C"))
        .foregroundColor(Color.white)
        .cornerRadius(8)
        .font(.Semibold14)
    }
}

// MARK: - Two Button Style  W: 128 , H: 44 || W: 168 , H: 73 , R: 16 || R: 8 ,, W: 343 , H: 73 , R: 16

struct ButtonStyleTwo: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            HStack {
                configuration.label
            }
            RoundedRectangle(cornerRadius: 16)
                .stroke(.gray)
        }
        .frame(width: 343,height: 73)
        .background(.white)
        .cornerRadius(16)
    }
}

struct ButtonStyeTwoSmall: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            HStack {
                configuration.label
            }
            RoundedRectangle(cornerRadius: 16)
                .stroke(.gray)
        }
        .frame(width: 168, height: 73)
        .background(.white)
        .cornerRadius(16)
        .multilineTextAlignment(.trailing)
    }
}

struct ButtonStyleTwoSlimSelected: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            HStack {
                configuration.label
            }
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color("2C"))
        }
        .frame(width: 128,height: 44)
        .background(.white)
        .cornerRadius(8)
    }
}

struct ButtonStyleTwoSlimNoSelected: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            HStack {
                configuration.label
            }
            RoundedRectangle(cornerRadius: 8)
                .stroke(.gray)
        }
        .frame(width: 128,height: 44)
        .background(.white)
        .cornerRadius(8)
    }
}

// MARK: - Third Button Style W: 335 , H: 50 , R: 10 || W: 88 , H: 50 , R: 10

struct ButtonStyleThreeSelected: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            HStack {
                configuration.label
            }
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color("2C"))
        }
        .frame(width: 335, height: 50)
        .background(.white)
    }
    
}

struct ButtonStyleThreeNoSelected: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            HStack {
                configuration.label
            }
            RoundedRectangle(cornerRadius: 10)
                .stroke(.gray)
        }
        .frame(width: 335, height: 50)
        .background(.white)
    }
    
}

struct ButtonStyleThreeSmallSelected: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            HStack {
                configuration.label
            }
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color("2C"))
        }
        .frame(width: 88, height: 50)
        .background(.white)
    }
    
}

struct ButtonStyleThreeSmallNoSelected: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            HStack {
                configuration.label
            }
            RoundedRectangle(cornerRadius: 10)
                .stroke(.gray)
        }
        .frame(width: 88, height: 50)
        .background(.white)
    }
    
}

// MARK: - Button Fourth Style

struct ButtonStyleFourth: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            HStack {
                configuration.label
            }
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color("2C"),lineWidth: 2)
        }
        .frame(width: 328, height: 116)
        
    }
}
