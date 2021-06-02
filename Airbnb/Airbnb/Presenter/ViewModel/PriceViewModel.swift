import Foundation
import RxSwift
import RxCocoa

final class PriceViewModel {
    
    private var locationInfo:String?
    private var dateInfo:String?
    private var apiPriceInfo:[Int] = PriceInfo.accommodation
    private var userPriceInfo:[Int] = []
    
    private lazy var priceList = BehaviorSubject(value: userPriceInfo)
    
    lazy var userPriceData:Driver<String> = {
        return priceList.map{TransformManager.convertToString(from: $0)}
            .asDriver(onErrorJustReturn: "")
    }()
    
    lazy var locationData:Driver<String> = {
        return Observable.just(locationInfo ?? "").asDriver(onErrorJustReturn: "")
    }()
    
    lazy var dateData:Driver<String> = {
        return Observable.just(dateInfo ?? "").asDriver(onErrorJustReturn: "")
    }()
    
    lazy var apiPriceData:Driver<String> = {
        return Observable.just(TransformManager.convertToString(from: apiPriceInfo)).asDriver(onErrorJustReturn: "")
    }()
    
    lazy var averagePriceData:Driver<String> = {
        let average = [apiPriceInfo.reduce(0, +)/apiPriceInfo.count]
        return Observable.just("평균 1박 요금은 \(TransformManager.convertToString(from: average)) 입니다.")
            .asDriver(onErrorJustReturn: "")
    }()
    
    func setupInfo(of location:String, of date:String) {
        locationInfo = location
        dateInfo = date
    }
    
    func getPriceInfo() -> [Int] {
        return apiPriceInfo
    }
    
    @discardableResult
    func append(_ price:[Int]) -> Observable<[Int]> {
        userPriceInfo = price
        priceList.onNext(userPriceInfo)
        return Observable.just(price)
    }
    
    @discardableResult
    func deleteAll() -> Observable<[Int]> {
        userPriceInfo.removeAll()
        priceList.onNext(userPriceInfo)
        return Observable.just([])
    }
}
