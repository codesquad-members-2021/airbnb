
import Foundation
import Alamofire

class NetworkManager {
    
    static func reequest<T: Decodable>(url: String, completionHandler: @escaping (Result<T, Error>) -> Void) {
        AF.request(url, method: .get)
            .validate(statusCode: 200..<300)
            .responseDecodable(of: T.self) { response in
                switch response.result {
                case .success(let data):
                    completionHandler(.success(data))
                case .failure(let error):
                    completionHandler(.failure(error))
                }
            }
    }
}
