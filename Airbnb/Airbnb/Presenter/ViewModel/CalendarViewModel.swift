import Foundation
import RxSwift
import RxCocoa

class CalendarViewModel {
    
    private var locationInfo:String?
    private var dateStorage:[String] = []
    
    lazy var locationData:Driver<String>={
        return Observable.just(locationInfo ?? "").asDriver(onErrorJustReturn: "")
    }()
    
    
    func setupLocationInfo(_ text:String) {
        locationInfo = text
    }
    
    func append(date info:String) {
        dateStorage.append(info)
    }
}
