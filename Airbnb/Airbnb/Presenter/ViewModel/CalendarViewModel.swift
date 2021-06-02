import Foundation
import RxSwift
import RxCocoa

final class CalendarViewModel {
    
    private var locationInfo:String?
    private var dateStorage:[String] = []
    
    lazy var locationData:Driver<String> = {
        return Observable.just(locationInfo ?? "").asDriver(onErrorJustReturn: "")
    }()
    
    private lazy var dateList = BehaviorSubject(value: dateStorage)
    
    lazy var dateInfo: Driver<String> = {
        return dateList.map{ TransformManager.convertToString(from: $0) }
            .asDriver(onErrorJustReturn: "")
    }()
    
    func setupLocationInfo(_ text:String) {
        locationInfo = text
    }
    
    @discardableResult
    func append(date info:String) -> Observable<String> {
        dateStorage.append(info)
        dateList.onNext(dateStorage)
        return Observable.just(info)
    }
    
    @discardableResult
    func delete(date info:String) -> Observable<String> {
        if let index = self.dateStorage.firstIndex(where: {$0==info}) {
            self.dateStorage.remove(at: index)
        }
        dateList.onNext(dateStorage)
        return Observable.just(info)
    }
    
    @discardableResult
    func deleteAll() -> Observable<[String]> {
        dateStorage.removeAll()
        dateList.onNext(dateStorage)
        return Observable.just([])
    }
}
