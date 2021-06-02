import Foundation
import RxSwift
import RxCocoa
import Alamofire

enum Login {
    static let post = "http://13.209.36.131:8080/users/login"
}

final class APIService {
    
    static func post(_ url:URL, parameter: LoginInfo) -> Observable<Data?> {
        return Observable.create { observer in
            AF.request(url, method: .post, parameters: parameter, encoder: JSONParameterEncoder.default)
                .response{ response in
                    switch response.result {
                    case.success(let on):
                        observer.onNext(on)
                    case.failure(let error):
                        observer.onError(error)
                    }
                }
            return Disposables.create()
        }
    }
}
