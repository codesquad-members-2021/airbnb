import Foundation
import RxSwift
import RxCocoa

class CalendarViewModel {
    
    private var locationInfo:String?
    
    func setupLocationInfo(_ text:String) {
        locationInfo = text
    }
    
    func getLocationInfo() -> String {
        return locationInfo!
    }
}
