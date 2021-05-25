//
//  FindingAccommodationManager.swift
//  airbnb
//
//  Created by 양준혁 on 2021/05/25.
//

import Foundation

final class FindingAccommodation {
    private let cityName: String?
    private let checkIn: String?
    private let checkOut: String?
    private var allPrices: [Int]?
    private var averagePrices: Int?
    private var maxPrice: Int?
    private var minPrice: Int?
    private let numOfPeople: Int?
    private var roomList: RoomsList?
    private let networkManager: Networking
    
    init(cityName: String? = nil, checkIn: String? = nil, checkOut: String? = nil, allPrices: [Int]? = nil, averagePrices: Int? = nil, maxPrice: Int? = nil, minPrice: Int? = nil, numOfPeople: Int? = nil, networkManager: Networking) {
        self.cityName = cityName
        self.checkIn = checkIn
        self.checkOut = checkOut
        self.allPrices = allPrices
        self.averagePrices = averagePrices
        self.maxPrice = maxPrice
        self.minPrice = minPrice
        self.numOfPeople = numOfPeople
        self.networkManager = networkManager
    }
    
    private func getAvailableRoomsPrices(checkIn: String, checkOut: String, cityName: String) {
        var queryItems = [URLQueryItem]()
        queryItems.append(QueryItems.cityName.assign(value: cityName))
        queryItems.append(QueryItems.checkIn.assign(value: checkIn))
        queryItems.append(QueryItems.checkOut.assign(value: checkOut))
        
        networkManager.getData(url: EndPoint.url(path: .price, queryItems: queryItems), decodableType: RoomsPrice.self) { price in
            self.allPrices = price.allPrices
            self.averagePrices = price.averagePrice
            self.maxPrice = price.allPrices.max()
            self.minPrice = price.allPrices.min()
        }
    }
    
    private func getAvailableRoomsList(numOfPeople: Int) {
        var queryItems = [URLQueryItem]()
        queryItems.append(QueryItems.checkIn.assign(value: checkIn!))
        queryItems.append(QueryItems.checkOut.assign(value: checkOut!))
        queryItems.append(QueryItems.cityName.assign(value: cityName!))
        queryItems.append(QueryItems.maxPrice.assign(value: String(maxPrice!)))
        queryItems.append(QueryItems.minPrice.assign(value: String(minPrice!)))
        queryItems.append(QueryItems.numOfPeople.assign(value: String(numOfPeople)))
        
        networkManager.getData(url: EndPoint.url(path: .rooms), decodableType: RoomsList.self) { roomList in
            self.roomList = roomList
        }
        
    }
}
