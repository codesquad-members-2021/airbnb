
import Foundation
import Alamofire

class NetworkManager {
    
    func reequest<T: Decodable>(url: String, completionHandler: @escaping (Result<T, Error>) -> Void) {
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

enum Url: String {
    case base = "https://testapi.free.beeceptor.com"
    
    public func make(path: String) -> URL? {
        return URL(string: Url.base.rawValue + "/\(path)")
    }
}
