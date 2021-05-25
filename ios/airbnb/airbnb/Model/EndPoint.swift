//
//  EndPoint.swift
//  airbnb
//
//  Created by 양준혁 on 2021/05/20.
//

import Foundation

enum EndPoint {
    static let scheme = "http"
    static let host = "52.78.158.138"
    static let port = 8080
    
    enum Path: String {
        case cities = "/cities"
        case rooms, reservation
        case price = "/rooms/prices"
        
        func assignRoom(id: Int) -> String {
            switch self {
            case .rooms:
                return "/rooms/\(id)"
            default:
                break
            }
            return ""
        }
        
        func assignReservation(id: Int) -> String {
            switch self {
            case .reservation:
                return "/reservations/\(id)"
            default:
                break
            }
            return ""
        }
    }
    
    static func url(path: Path, queryItems: [URLQueryItem]? = nil, reservationRoomId: Int? = nil, roomId: Int? = nil) -> String {
        var component = URLComponents()
        component.scheme = scheme
        component.host = host
        component.port = port
        component.path = {
            switch path {
            case .cities:
                return path.rawValue
            case .rooms:
                return path.assignRoom(id: roomId ?? 0)
            case .reservation:
                return path.assignReservation(id: reservationRoomId ?? 0)
            case .price:
                return path.rawValue
            }
        }()
        component.queryItems = queryItems
        guard let urlString = component.url?.absoluteString else { return "somethingwrong" }
        return urlString
    }
}

enum QueryItems {
    case checkIn
    case checkOut
    case cityName
    case maxPrice
    case minPrice
    case numOfPeople
    
    private func assign(value: String) -> URLQueryItem {
        switch self {
        case .checkIn:
            return URLQueryItem(name: "checkIn", value: value)
        case .checkOut:
            return URLQueryItem(name: "checkOut", value: value)
        case .cityName:
            return URLQueryItem(name: "cityName", value: value)
        case .maxPrice:
            return URLQueryItem(name: "maxPrice", value: value)
        case .minPrice:
            return URLQueryItem(name: "minPrice", value: value)
        case .numOfPeople:
            return URLQueryItem(name: "numOfPeople", value: value)
        }
    }
}
