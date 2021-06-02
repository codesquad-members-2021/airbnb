import Foundation
import RxSwift
import RxCocoa

final class MainViewModel: CommonViewModelType {
    
    private let firstViewData = [
        SectionOfMainViewData(header: HeaderManager.first, items: [MainViewInfo(image: ImageManager.main, mainInfo: MainInfoManager.main, detailInfo: DetailInfoManager.main)]),
        
        SectionOfMainViewData(header: HeaderManager.second, items: [MainViewInfo(image: ImageManager.main, mainInfo: MainInfoManager.main, detailInfo: DetailInfoManager.main)]),
        
        SectionOfMainViewData(header: HeaderManager.third, items: [MainViewInfo(image: ImageManager.main, mainInfo: MainInfoManager.main, detailInfo: DetailInfoManager.main)])
    ]
    
    private lazy var firstStorage = BehaviorSubject(value: firstViewData)
    
    func getViewData() -> Driver<[SectionOfMainViewData]> {
        return firstStorage.asDriver(onErrorJustReturn: [])
    }
}
