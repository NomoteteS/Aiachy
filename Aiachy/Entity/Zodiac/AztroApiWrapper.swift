//
//  AztroApi.swift
//  Aiachy
//
//  Created by NomoteteS on 1.08.2022.
// https://github.com/sameerkumar18/aztro & https://www.youtube.com/watch?v=Yzx7ihtCGBs


import SwiftUI

//func getZodi() {
//    let decoder = JSONDecoder()
//    let urlst = ""
//    let url = URL(string: urlst)
//    let zodi = decoder.decode(ZodiMainAPI.self, from: url )
//}


struct ZodiMainAPI: Decodable {
    let sign: [Zodis]
    let day: String

}

struct ZodiContentAPI: Decodable {
    let current_date: String
    let compatibility: String
    let lucky_time: String
    let lucky_number: Int
    let date_range: String
    let mood: String
    let description: String
}

enum Zodis: Decodable {
    case scorpion, aries
}




//struct ZodiacDatas: Decodable {
//    var sign: signsData
//    var days: daysData
//
//    enum CodingKeys: String, CodingKey{
//        case sign = "signs"
//        case days = "days"
//    }
//}
//
//struct signsData: Decodable {
//    var aries: ZodiProperty
//    var scorpion: String = "scorpion"
//
//}
//
//struct ZodiProperty: Decodable {
//    var current_date : String
//}
//
//struct daysData: Decodable {
//    var today : String = "Today"
//    var tomorrow : String = "Tomorrow"
//    var yesterday : String = "Yesterday"
//}


/// 1. ilk önce sign altından color veya lucky number bulmaya çalış olmaz ise
/// 2. sign altında daily bulup description bulmaya çalış 

//struct ZodiProperty: String, Decodable {
//    var current_date : current_date
//}

//
//
//signs = [
//       'aries', 'taurus', 'gemini', 'cancer', 'leo', 'virgo', 'libra',
//       'scorpio', 'sagittarius', 'capricorn', 'aquarius', 'pisces'
//   ]


//"current_date": "June 23, 2017",
//"compatibility": " Cancer", "lucky_time": " 7am",
//"lucky_number": " 64",
//"color": " Spring Green",
//"date_range": "Mar 21 - Apr 20",
//"mood": " Relaxed",
//"description": "It's finally time for you to think about just
// one thing: what makes you happy. Fortunately, that happens to be a person who feels
// the same way. Give yourself the evening off. Refuse to be put in charge of anything."


//   days = [
//       'today', 'tomorrow', 'yesterday'
//   ]
