//
//  AdjacentDestination.swift
//  Arirbnb
//
//  Created by 지북 on 2021/05/21.
//

import Foundation

class AdjacentDestination: DiffableUsableModel {
    var destinationName: String
    var distance: String
    var imageURL: String
    
    init(destinationName: String, distance: String, imageURL: String) {
        self.destinationName = destinationName
        self.distance = distance
        self.imageURL = imageURL
        super.init()
    }
    
    override func hash(into hasher: inout Hasher) {
      hasher.combine(identifier)
    }

    static func == (lhs: AdjacentDestination, rhs: AdjacentDestination) -> Bool {
      return lhs.identifier == rhs.identifier
    }
    
    private let identifier = UUID()
}

struct MockAdjacentDestination {
    static var mockDatas: [AdjacentDestination] {
        return [AdjacentDestination.init(destinationName: "서울", distance: "차로 30분 거리", imageURL: "https://a0.muscache.com/im/pictures/71e23854-a3c7-491c-b715-6e86233a293f.jpg?im_q=medq&im_w=240"),
                AdjacentDestination.init(destinationName: "인천", distance: "차로 45분 거리", imageURL: "https://a0.muscache.com/im/pictures/31e445ed-8b69-477b-aefd-d04dae6d0bb1.jpg?im_q=medq&im_w=240"),
                AdjacentDestination.init(destinationName: "의정부", distance: "차로 30분 거리", imageURL: "https://a0.muscache.com/im/pictures/f98fbb2e-9e10-4514-b4a7-02c467e1da03.jpg?im_q=medq&im_w=240"),
                AdjacentDestination.init(destinationName: "대구", distance: "차로 4시간 거리", imageURL: "https://a0.muscache.com/im/pictures/f7736f4a-f8b9-4527-b46c-d0d8df856984.jpg?im_q=medq&im_w=240"),
                AdjacentDestination.init(destinationName: "대전", distance: "차로 2.5시간 거리", imageURL: "https://a0.muscache.com/im/pictures/a0eb36e7-b468-4c5e-93b2-819e793563b2.jpg?im_q=medq&im_w=240"),
                AdjacentDestination.init(destinationName: "광주", distance: "차로 4시간 거리", imageURL: "https://a0.muscache.com/im/pictures/087a8dff-a609-4084-86db-f45051c6f23a.jpg?im_q=medq&im_w=240"),
                AdjacentDestination.init(destinationName: "수원", distance: "차로 45분 거리", imageURL: "https://a0.muscache.com/im/pictures/926d56aa-8b36-4138-8eae-ad991868b858.jpg?im_q=medq&im_w=240"),
                AdjacentDestination.init(destinationName: "울산", distance: "차로 5시간 거리", imageURL: "https://a0.muscache.com/im/pictures/76e5f1c6-a788-418c-a28b-f0ee29cffd41.jpg?im_q=medq&im_w=240")
        ]
    }
}
