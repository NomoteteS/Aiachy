//
//  SetUpFirstPageZodiac.swift
//  Aiachy
//
//  Created by NomoteteS on 30.09.2022.
//

import SwiftUI


struct ZodiacAnimal: Hashable, Identifiable {
    var name: String
    var dateRange: String
    
    var id: String {
        name
    }
}

enum Animal: RawRepresentable, CaseIterable, Identifiable {
    case aquarius
    case aries
    case cancer
    case capricorn
    case gemini
    case leo
    case libra
    case pisces
    case sagittarius
    case scorpion
    case taurus
    case virgo
    
    var rawValue: ZodiacAnimal {
        switch self {
        case .aquarius: return ZodiacAnimal(name: "Aquarius", dateRange: "20 Jan - 19 Feb")
        case .aries: return ZodiacAnimal(name: "Aries", dateRange: "21 Mar - 20 Apr")
        case .cancer: return ZodiacAnimal(name: "Cancer", dateRange: "21 Jun - 23 Jul")
        case .capricorn: return ZodiacAnimal(name: "Capricorn", dateRange: "22 Dec - 20 Jan")
        case .gemini: return ZodiacAnimal(name: "Gemini", dateRange: "21 May - 21 Jun")
        case .leo: return ZodiacAnimal(name: "Leo", dateRange: "23 Jul - 23 Aug")
        case .libra: return ZodiacAnimal(name: "Libra", dateRange: "23 Sep - 23 Oct")
        case .pisces: return ZodiacAnimal(name: "Pisces", dateRange: "19 Feb - 21 Mar")
        case .sagittarius: return ZodiacAnimal(name: "Sagittarius", dateRange: "23 Nov - 22 Dec")
        case .scorpion: return ZodiacAnimal(name: "Scorpion", dateRange: "23 Oct - 22 Nov")
        case .taurus: return ZodiacAnimal(name: "Taurus", dateRange: "20 Apr - 21 May")
        case .virgo: return ZodiacAnimal(name: "Virgo", dateRange: "23 Aug - 23 Sep")
        }
    }
    
    init?(rawValue: ZodiacAnimal) {
        switch rawValue.name {
        case "aquarius": self = .aquarius
        case "aries": self = .aries
        case "cancer": self = .cancer
        case "capricorn": self = .capricorn
        case "gemini": self = .gemini
        case "Leo": self = .leo
        case "libra": self = .libra
        case "pisces": self = .pisces
        case "sagrittarius": self = .sagittarius
        case "scorpion": self = .scorpion
        case "taurus": self = .taurus
        case "virgo": self = .virgo
            
        default: return nil
        }
        return nil
    }
    
    var id: ZodiacAnimal {
        self.rawValue
    }
}

struct ZodiacSetup: View {
    
    @State var zodiac: Animal
    @State private var zodiacAnimals = Animal.allCases
    
    var body: some View {
        Group {
            VStack(alignment: .trailing, spacing: 2) {
                ForEach(zodiacAnimals, id: \.rawValue) { zodiacAnimal in
                    VStack(spacing: 2) {
                        Image(zodiac == zodiacAnimal ? "Dark-\(zodiacAnimal.rawValue.name)" : "Light-\(zodiacAnimal.rawValue.name)")
                            .resizable()
                            .frame(width: 80, height: 80)
                        Text(zodiacAnimal.rawValue.name)
                            .font(.Medium12)
                            .foregroundColor(Color("1C"))
                        Text(zodiacAnimal.rawValue.dateRange)
                            .font(.Medium12)
                            .foregroundColor(Color.gray)
                    }.onTapGesture {
                        zodiac = zodiacAnimal
                    }
                }.fixedSize(horizontal: true, vertical: true)
                    
                    
            }.frame(width: 343, height: 488, alignment: .center)
                
                
        }
    }
}

// setUpFirstPage de konum ayarlamaya çalış
// Üstekiler bir aray olarak kabul edeyip farklı bir değer atayıp üstüne kabul etmen gerekiyor yani çekip 1. değer 2. değer şekilde değişkenleri aktarman gerekiyor.
