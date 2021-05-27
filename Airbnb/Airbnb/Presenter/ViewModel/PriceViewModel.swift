import Foundation
import RxSwift
import RxCocoa

class PriceViewModel {
    
    private var locationInfo:String?
    private var dateInfo:String?
    private var priceInfo:[Int] = [200000, 800000]
    
    lazy var locationData:Driver<String> = {
        return Observable.just(locationInfo ?? "").asDriver(onErrorJustReturn: "")
    }()
    
    lazy var dateData:Driver<String> = {
        return Observable.just(dateInfo ?? "").asDriver(onErrorJustReturn: "")
    }()
    
    lazy var priceData:Driver<String> = {
        return Observable.just(TransformManager.toString(from: priceInfo)).asDriver(onErrorJustReturn: "")
    }()
    
    lazy var averagePriceData:Driver<String> = {
        let average = [priceInfo.reduce(0, +)/priceInfo.count]
        return Observable.just(TransformManager.toString(from: average))
            .asDriver(onErrorJustReturn: "")
    }()
    
    func setupInfo(of location:String, of date:String) {
        locationInfo = location
        dateInfo = date
    }
    
    func getPriceInfo() -> [Int] {
        return priceInfo
    }
}
