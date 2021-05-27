import Foundation
import RxSwift
import RxCocoa

class PriceViewModel {
    
    private var locationInfo: String?
    private var dateInfo: String?
    
    lazy var locationData:Driver<String> = {
        return Observable.just(locationInfo ?? "").asDriver(onErrorJustReturn: "")
    }()
    
    lazy var dateData:Driver<String> = {
        return Observable.just(dateInfo ?? "").asDriver(onErrorJustReturn: "")
    }()
    
    func setupInfo(of location:String, of date:String) {
        locationInfo = location
        dateInfo = date
    }
}
