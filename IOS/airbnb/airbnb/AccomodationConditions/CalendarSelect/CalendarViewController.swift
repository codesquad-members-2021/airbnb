//
//  CalendarViewController.swift
//  airbnb
//
//  Created by Song on 2021/05/19.
//

import UIKit

final class CalendarViewController: UIViewController, Instantiable {

    static var reuseIdentifier: String { String(describing: self) }
    private let backButtonTitle = "날짜 선택"
    
    var location: LocationSearchResult?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
