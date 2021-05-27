import Foundation
import RxSwift
import RxCocoa

class PriceViewModel {
    
    private var locationInfo: String?
    private var dateInfo: String?
    
    func setupInfo(of location:String, of date:String) {
        locationInfo = location
        dateInfo = date
    }
}
