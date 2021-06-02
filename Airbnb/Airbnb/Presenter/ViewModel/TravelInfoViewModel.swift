import Foundation
import RxSwift
import RxCocoa

final class TravelInfoViewModel: CommonViewModelType {
    
    private let thirdViewData = [MainViewInfo(image: ImageManager.nature, mainInfo: MainInfoManager.nature, detailInfo: nil), MainViewInfo(image: ImageManager.unique, mainInfo: MainInfoManager.unique, detailInfo: nil)]
    
    private lazy var thirdStroage = BehaviorSubject(value: thirdViewData)
    
    func getViewData() -> Driver<[MainViewInfo]> {
        return thirdStroage.asDriver(onErrorJustReturn: [])
    }
}
