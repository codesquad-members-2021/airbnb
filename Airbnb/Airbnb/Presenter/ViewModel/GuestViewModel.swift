import Foundation
import RxSwift
import RxCocoa

class GuestViewModel {
    
    private var locationInfo:String?
    private var dateInfo:String?
    private var priceInfo:String?
    
    func setupInfo(_ location:String, _ date:String, _ price:String) {
        locationInfo = location
        dateInfo = date
        priceInfo = price
    }
}
