import Foundation

class TransformManager {
    
    
    static func toString(from date:Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter.string(from: date)
    }
    
    static func toString(from strArr:[String]) -> String {
        if strArr.isEmpty { return "" }
        let checkIn = strArr.min()!
        let checkOut = strArr.max()!
        let res = checkIn == checkOut ? checkIn:"\(checkIn) ~ \(checkOut)"
        return res
    }
}
