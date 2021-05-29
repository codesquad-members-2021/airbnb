//
//  Destination.swift
//  Arirbnb
//
//  Created by 지북 on 2021/05/24.
//

import Foundation

class Destination: Hashable {
    var destinationName: String
    var distance: String?
    var imageURL: String?
    
    init(destinationName: String, distance: String?, imageURL: String?) {
        self.destinationName = destinationName
        self.distance = distance
        self.imageURL = imageURL
    }
    
    convenience init(destinationName: String, imageURL: String) {
        self.init(destinationName: destinationName, distance: nil, imageURL: imageURL)
    }
    
    convenience init(destinationName: String) {
        self.init(destinationName: destinationName, distance: nil, imageURL: nil)
    }
    
    func hash(into hasher: inout Hasher) {
      hasher.combine(identifier)
    }

    static func == (lhs: Destination, rhs: Destination) -> Bool {
      return lhs.identifier == rhs.identifier
    }
    
    private let identifier = UUID()
}

struct MockThemeDestination {
    static var mockDatas: [Destination] {
        return [ Destination.init(destinationName: "자연생활을 만끽할 수 있는 숙소", imageURL: "https://a0.muscache.com/im/pictures/2f13349d-879d-43c6-83e3-8e5679291d53.jpg?im_w=720"),
                 Destination.init(destinationName: "독특한 공간", imageURL: "https://a0.muscache.com/im/pictures/36f53e61-db8d-403c-9122-5b761c0e4264.jpg?im_w=720"),
                 Destination.init(destinationName: "집 전체", imageURL: "https://a0.muscache.com/im/pictures/7d82ca14-56e5-4465-8218-dcfa7d69b6ac.jpg?im_w=720"),
                 Destination.init(destinationName: "반려동물 가능", imageURL: "https://a0.muscache.com/im/pictures/10a638e1-6aff-4313-8033-1275cec83987.jpg?im_w=720")
        ]
    }
}

struct MockAdjacentDestination {
    static var mockDatas: [Destination] {
        return [Destination.init(destinationName: "서울", distance: "차로 30분 거리", imageURL: "https://a0.muscache.com/im/pictures/71e23854-a3c7-491c-b715-6e86233a293f.jpg?im_q=medq&im_w=240"),
                Destination.init(destinationName: "인천", distance: "차로 45분 거리", imageURL: "https://a0.muscache.com/im/pictures/31e445ed-8b69-477b-aefd-d04dae6d0bb1.jpg?im_q=medq&im_w=240"),
                Destination.init(destinationName: "의정부", distance: "차로 30분 거리", imageURL: "https://a0.muscache.com/im/pictures/f98fbb2e-9e10-4514-b4a7-02c467e1da03.jpg?im_q=medq&im_w=240"),
                Destination.init(destinationName: "대구", distance: "차로 4시간 거리", imageURL: "https://a0.muscache.com/im/pictures/f7736f4a-f8b9-4527-b46c-d0d8df856984.jpg?im_q=medq&im_w=240"),
                Destination.init(destinationName: "대전", distance: "차로 2.5시간 거리", imageURL: "https://a0.muscache.com/im/pictures/a0eb36e7-b468-4c5e-93b2-819e793563b2.jpg?im_q=medq&im_w=240"),
                Destination.init(destinationName: "광주", distance: "차로 4시간 거리", imageURL: "https://a0.muscache.com/im/pictures/087a8dff-a609-4084-86db-f45051c6f23a.jpg?im_q=medq&im_w=240"),
                Destination.init(destinationName: "수원", distance: "차로 45분 거리", imageURL: "https://a0.muscache.com/im/pictures/926d56aa-8b36-4138-8eae-ad991868b858.jpg?im_q=medq&im_w=240"),
                Destination.init(destinationName: "울산", distance: "차로 5시간 거리", imageURL: "https://a0.muscache.com/im/pictures/76e5f1c6-a788-418c-a28b-f0ee29cffd41.jpg?im_q=medq&im_w=240")
        ]
    }
}

struct MockSearchedDestinaion {
    static var mockDatas: [Destination] {
        return [Destination.init(destinationName: "서울"),
                Destination.init(destinationName: "울산"),
                Destination.init(destinationName: "포항"),
                Destination.init(destinationName: "부산"),
                Destination.init(destinationName: "부천"),
                Destination.init(destinationName: "춘천"),
                Destination.init(destinationName: "부평")
        ]
    }
}
