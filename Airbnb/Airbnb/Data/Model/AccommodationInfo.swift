import Foundation

struct AccommodationInfo {
    let location: String
    let checkIn: String
    let checkOut: String
    let min: Int
    let max: Int
    let guests: Int
    
    enum CodingKeys: String, CodingKey {
        case location
        case checkIn = "check-in"
        case checkOut = "check-out"
        case min
        case max
        case guests
    }
}
