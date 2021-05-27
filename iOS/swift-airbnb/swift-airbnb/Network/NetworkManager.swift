//
//  NetworkManager.swift
//  swift-airbnb
//
//  Created by user on 2021/05/23.
//

import Foundation
import Alamofire

class NetworkManager {
    
    //MARK: 카카오 API를 통해 장소 목록만을 받아오기 위한 메소드
    static func placeListRequest(about string: String, result: @escaping (Data?) -> Void) {
        let url = "https://dapi.kakao.com/v2/local/search/keyword.json"
        let parameter: [String : Any] = ["query": string]
        let headers: HTTPHeaders = ["Authorization": "KakaoAK b8fb777082e4670feadeb4916a1f598e"]
        
        AF.request(url, method: .get, parameters: parameter, headers: headers).responseData { (response) in
            switch response.result {
            case .success(let data):
                print(data)
                print(String(data: data, encoding: String.Encoding.utf8))
                
                result(data)
            case .failure(_):
                result(nil)
            }
        }
    }
}
