//
//  NetworkManager.swift
//  swift-airbnb
//
//  Created by user on 2021/05/23.
//

import Foundation
import Alamofire

class NetworkManager {
    static func getTest() {
        let url = "https://dapi.kakao.com/v2/local/search/keyword.json"
        let param: [String : Any] = ["query": "서초"]
        let headers: HTTPHeaders = ["Authorization": "KakaoAK b8fb777082e4670feadeb4916a1f598e"]
        AF.request(url, method: .get, parameters: param, headers: headers).responseJSON { (response) in
            switch response.result {
            case .success(let data):
                
                print(data)
            case .failure(let error):
                print(error)
            }
            
        }
    }
}
