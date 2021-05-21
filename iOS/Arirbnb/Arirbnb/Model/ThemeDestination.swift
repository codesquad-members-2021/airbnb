//
//  ThemeDestination.swift
//  Arirbnb
//
//  Created by 지북 on 2021/05/21.
//

import Foundation

class ThemeDestination: DiffableUsableModel {
    var themeName: String
    var imageURL: String
    
    init(themeName: String, imageURL: String) {
        self.themeName = themeName
        self.imageURL = imageURL
        super.init()
    }
    
    override func hash(into hasher: inout Hasher) {
      hasher.combine(identifier)
    }

    static func == (lhs: ThemeDestination, rhs: ThemeDestination) -> Bool {
      return lhs.identifier == rhs.identifier
    }
    
    private let identifier = UUID()
}

struct MockThemeDestination {
    static var mockDatas: [ThemeDestination] {
        return [ ThemeDestination.init(themeName: "자연생활을 만끽할 수 있는 숙소", imageURL: "https://a0.muscache.com/im/pictures/2f13349d-879d-43c6-83e3-8e5679291d53.jpg?im_w=720"),
                 ThemeDestination.init(themeName: "독특한 공간", imageURL: "https://a0.muscache.com/im/pictures/36f53e61-db8d-403c-9122-5b761c0e4264.jpg?im_w=720"),
                 ThemeDestination.init(themeName: "집 전체", imageURL: "https://a0.muscache.com/im/pictures/7d82ca14-56e5-4465-8218-dcfa7d69b6ac.jpg?im_w=720"),
                 ThemeDestination.init(themeName: "반려동물 가능", imageURL: "https://a0.muscache.com/im/pictures/10a638e1-6aff-4313-8033-1275cec83987.jpg?im_w=720")
        ]
    }
}
