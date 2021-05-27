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
    
    static func toString(from intArr:[Int]) -> String {
        if intArr.isEmpty { return "" }
        let minPrice = intArr.min()!.formattedWithSeparator
        let maxPrice = intArr.max()!.formattedWithSeparator
        let res = minPrice == maxPrice ? "₩\(minPrice)":"₩\(minPrice) - ₩\(maxPrice)"
        return res
    }
}

extension Formatter {
    static let withSeparator: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = ","
        formatter.numberStyle = .decimal
        return formatter
    }()
}

extension IntegerLiteralType {
    var formattedWithSeparator: String {
        return Formatter.withSeparator.string(for: self) ?? ""
    }
}
