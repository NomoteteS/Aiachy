//import SwiftUI
//
//struct ZodiacAnimal: Identifiable {
//
//
//    var id: ObjectIdentifier
//   var name: String
//   var dateRange: String
//}
//struct exampleZodiac = [
//  ZodiacAnimal(name: "Pisces", date: "19 Feb - 20 Mar"),
//  ZodiacAnimal(name: "Taurus", date: "21 Mar - 19 Apr"),
//  ZodiacAnimal(name: "Aries", date: "20 Apr - 20 Mar")
//]
//
//struct ZodiacSetup: View {
//
//   @State var zodiac: ZodiacAnimal
//
//   var body: some View {
//       VStack {
//           HStack {
//               ForEach(exampleZodiac) { zodiacAnimal in
//                   VStack {
//                            Image(zodiac == zodiacAnimal ? "Dark-\(azodiacAnimal.name)" : "Light-\(azodiacAnimal.name)")
//                                .resizeable()
//                                .frame(width: 80, height: 80)
//                            Text(zodiacAnimal.name)
//                                .font(.Medium12)
//                                .forgroundColor(Color("IC"),
//                            Text(zodiacAnimal.date)
//                                .font(.Medium12)
//                                .forgroundColor(Color.gray)
//
//                   }.onTap { context in
//                      zodiac = zodiacAnimal
//                       }
//                  }
//           }
//       }
//    }
//}
