
import Foundation

//struct Cities: Decodable {
//    let cities: [City]
//}
//
//struct City: Decodable {
//    let name: String
//    let image: String
//}


struct Cities: Codable {
    let mainImage: String
    let cities: [City]
    let extraImages: [String]
}

struct City: Codable {
    let id: Int
    let cityName: String
    let cityImage: String
}
