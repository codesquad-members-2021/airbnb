//
//  DayLabel.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/05/21.
//

import UIKit
import HorizonCalendar

struct DayLabel: CalendarItemViewRepresentable {

  /// Properties that are set once when we initialize the view.
  struct InvariantViewProperties: Hashable {
    let font: UIFont
    var textColor: UIColor
    var backgroundColor: UIColor
  }

  /// Properties that will vary depending on the particular date being displayed.
  struct ViewModel: Equatable {
    let day: Day
  }

  static func makeView(
    withInvariantViewProperties invariantViewProperties: InvariantViewProperties) -> UILabel {
    let label = UILabel()

    label.backgroundColor = invariantViewProperties.backgroundColor
    label.font = invariantViewProperties.font
    label.textColor = invariantViewProperties.textColor

    label.textAlignment = .center
    label.clipsToBounds = true
    label.layer.cornerRadius = 12
    
    return label
  }

  static func setViewModel(_ viewModel: ViewModel, on view: UILabel) {
    view.text = "\(viewModel.day.day)"
  }

}
