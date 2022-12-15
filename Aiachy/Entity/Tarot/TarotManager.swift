//
//  TarotManager.swift
//  Aiachy
//
//  Created by NomoteteS on 27.07.2022.
//

import Foundation

// MARK: - CardData
struct CardData: Codable {
    let nhits: Int
    let cards: [card_data]
}

struct card_data: Codable {
    let type: TypeEnum
    let nameShort, name, value: String
    let valueInt: Int
    let meaningUp, meaningRev, desc: String
    let suit: Suit?

    enum CodingKeys: String, CodingKey {
        case type
        case nameShort = "name_short"
        case name, value
        case valueInt = "value_int"
        case meaningUp = "meaning_up"
        case meaningRev = "meaning_rev"
        case desc, suit
    }
    static let allCards: [CardData] = Bundle.main.decode(file: "card_data.json")
    static let sampleAllCards: CardData = allCards[0]
}

enum Suit: String, Codable {
    case cups = "cups"
    case pentacles = "pentacles"
    case swords = "swords"
    case wands = "wands"
}

enum TypeEnum: String, Codable {
    case major = "major"
    case minor = "minor"
}

// MARK: - Major Cards

struct maj_text: Codable {
    let nameShort, name, text, value: String

    enum CodingKeys: String, CodingKey {
        case nameShort = "name_short"
        case name, text, value
    }
    
    static let allMajCards: [maj_text] = Bundle.main.decode(file: "maj_text.json")
    static let sampleMajCards: maj_text = allMajCards[0]
    
}

// MARK: - Minor Cards

struct min_text: Codable {
    let nameShort, text: String

    enum CodingKeys: String, CodingKey {
        case nameShort = "name_short"
        case text
    }
    
    static let allMinCards: [min_text] = Bundle.main.decode(file: "min_text.json")
    static let sampleMinCards: min_text = allMinCards[0]
    
}


// MARK: - Card_data decoding
func GetCardData() {
    guard let sourceURL = Bundle.main.url(forResource: "card_data", withExtension: "json") else {
        fatalError("Source URL problem")
    }
    
    guard let card_dataJSON = try? Data(contentsOf: sourceURL) else {
        fatalError("Error")
    }
    
    guard let CardData = try? JSONDecoder().decode(CardData.self, from: card_dataJSON) else {
        fatalError("")
    }
}


// MARK: - JSON DECODING
// Extension to decode JSON locally

extension Bundle {
func decode<T: Decodable>(file: String) -> T {
    guard let url = self.url(forResource: file, withExtension: "json") else {
        fatalError("Could not find \(file) in bundle.")
    }
    
    guard let data = try? Data(contentsOf: url) else {
        fatalError("Could not load \(file) from bundle.")
    }
    
    let decoder = JSONDecoder()
    
    guard let loadedData = try? decoder.decode(T.self, from: data) else {
        fatalError("Could not decode \(file) from bundle.")
    }
    
    return loadedData
    }
}

