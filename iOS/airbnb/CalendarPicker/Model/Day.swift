//
//  Day.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/25.
//

import Foundation

struct Day {
    let date: Date // Date represents a given day in a month.
    let number: String // The number to display on the collection view cell.
    let isSelected: Bool // Keeps track of whether this date is selected.
    let isWithinDisplayedMonth: Bool // Tracks if this date is within the currently-viewed month.
}
