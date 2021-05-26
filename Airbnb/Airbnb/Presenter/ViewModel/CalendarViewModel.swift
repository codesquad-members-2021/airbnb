import Foundation
import RxSwift
import RxCocoa

class CalendarViewModel {
    
    private var accommodationInfo = [["위치", ""], ["체크인/체크아웃", ""], ["요금", ""], ["인원", ""]]
    private lazy var infoList = BehaviorSubject(value: accommodationInfo)
    
    func accommodationData() -> Driver<[[String]]> {
        return infoList.asDriver(onErrorJustReturn: [[]])
    }
    
    func add(location info:String) {
        accommodationInfo[0][1] = info
    }
}
