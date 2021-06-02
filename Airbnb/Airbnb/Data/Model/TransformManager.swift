import Foundation

final class TransformManager {
    
    static func convertToString(from date:Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter.string(from: date)
    }
    
    static func convertToString(from checkInOutArray:[String]) -> String {
        if checkInOutArray.isEmpty { return "" }
        let checkIn = checkInOutArray.min()!
        let checkOut = checkInOutArray.max()!
        let res = checkIn == checkOut ? checkIn:"\(checkIn) ~ \(checkOut)"
        return res
    }
    
    static func convertToString(from priceArray:[Int]) -> String {
        if priceArray.isEmpty { return "" }
        let minPrice = priceArray.min()!.formattedWithSeparator
        let maxPrice = priceArray.max()!.formattedWithSeparator
        let res = minPrice == maxPrice ? "₩\(minPrice)":"₩\(minPrice) - ₩\(maxPrice)"
        return res
    }
}

private extension Formatter {
    static let withSeparator: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = ","
        formatter.numberStyle = .decimal
        return formatter
    }()
}

private extension IntegerLiteralType {
    var formattedWithSeparator: String {
        return Formatter.withSeparator.string(for: self) ?? ""
    }
}
