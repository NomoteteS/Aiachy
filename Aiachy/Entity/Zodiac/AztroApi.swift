//
//  AztroApi.swift
//  Aiachy
//
//  Created by NomoteteS on 19.11.2022.
//

import SwiftUI

struct AztroApi: View {
        
    var body: some View {
        Text("hey")
    }
}

struct AztroApi_Previews: PreviewProvider {
    static var previews: some View {
        AztroApi()
    }
}

// Burada view modeli yapıp main menu atayacaksın








//@State var data = ZodiacDatas(sign: signsData.init(aries: ZodiProperty.init(current_date: "Today")), days: daysData.init())
//
//    func getZodiac() {
//        let urlString = "https://aztro.sameerkumar.website"
//        let url = URL(string: urlString)
//
//        URLSession.shared.dataTask(with: url!) { data, _, error in
//            DispatchQueue.main.async {
//
//                if let data = data {
//                    do{
//                        let decoder = JSONDecoder()
//                        let decodedData = try! decoder.decode(ZodiacDatas.self, from: data)
//                        self.data = decodedData
//                    }catch{
//                        print("Error")
//                    }
//                }
//            }
//        }.resume()
//    }
