//
//  RegionData.swift
//  Airbnb
//
//  Created by Lia on 2021/05/21.
//

import Foundation

struct CityName {
    let city: String
    let id: Int
    
    init(city: String, id: Int){
        self.city = city
        self.id = id
    }
    
    static let allCities = [
        CityName(city: "양재동, 서초구, 서울특별시", id: 1),
        CityName(city: "양재역 사거리, 양재1동", id: 1),
        CityName(city: "서울특별시 양재2동 시민의 숲앞", id: 1),
        CityName(city: "서울특별시 양재2동 양재IC", id: 1),
        CityName(city: "서울특별시 코드스쿼드", id: 1),
        CityName(city: "경기도청", id: 2),
        CityName(city: "경기도 도서관", id: 2),
        CityName(city: "서울마포우체국", id: 1),
        CityName(city: "강원랜드", id: 3),
        CityName(city: "강릉중앙시장", id: 3),
        CityName(city: "청주시외버스터미널", id: 4),
        CityName(city: "논산훈련소", id: 4),
        CityName(city: "논산역", id: 4),
        CityName(city: "대전오월드", id: 4),
        CityName(city: "카이스트", id: 4),
        CityName(city: "부산파라다이스 호텔", id: 5),
        CityName(city: "사천짬뽕맛집", id: 5),
        CityName(city: "사천찜닭", id: 5),
        CityName(city: "유니스트", id: 5),
        CityName(city: "포항공과대학교", id: 6),
        CityName(city: "포항육거리", id: 6),
        CityName(city: "경주월드", id: 6),
        CityName(city: "디지스트", id: 6),
        CityName(city: "지스트", id: 7),
        CityName(city: "광주 광산구 산정동", id: 7),
        CityName(city: "순천대학교", id: 7),
        CityName(city: "조례 호수공원", id: 7),
        CityName(city: "전주한옥마을", id: 8),
        CityName(city: "테디베어뮤지엄 군산점", id: 8)
    ]
}
