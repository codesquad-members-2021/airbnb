import Foundation
import RxSwift
import RxCocoa

final class GuestViewModel {
    
    private var locationInfo:String?
    private var dateInfo:String?
    private var priceInfo:String?
    
    func setupInfo(_ location:String, _ date:String, _ price:String) {
        locationInfo = location
        dateInfo = date
        priceInfo = price
    }
    
    lazy var locationData:Driver<String> = {
        return Observable.just(locationInfo ?? "").asDriver(onErrorJustReturn: "")
    }()
    
    lazy var dateData:Driver<String> = {
        return Observable.just(dateInfo ?? "").asDriver(onErrorJustReturn: "")
    }()
    
    lazy var priceData:Driver<String> = {
        return Observable.just(priceInfo ?? "").asDriver(onErrorJustReturn: "")
    }()
}
