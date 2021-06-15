//
//  Date+Extension.swift
//  airbnb
//
//  Created by 박혜원 on 2021/06/03.
//

import Foundation

extension Date {
    
    static func setDateFormat(with str : String) -> DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = str
        return dateFormatter
    }
    
    func string() -> String{
        let dateFormatter = Date.setDateFormat(with: "yyyy-MM-dd")
        return dateFormatter.string(from: self)
    }
}
