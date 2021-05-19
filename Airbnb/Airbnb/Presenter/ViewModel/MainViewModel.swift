import Foundation
import RxSwift
import RxCocoa

class MainViewModel {
    private let mainViewData = [
        SectionOfMainViewData(header: HeaderManager.first, items: [MainViewInfo(image: ImageManager.main, mainInfo: MainInfoManager.main, detailInfo: DetailInfoManager.main)]),
        SectionOfMainViewData(header: HeaderManager.second, items: [MainViewInfo(image: ImageManager.seoul, mainInfo: MainInfoManager.seoul, detailInfo: DetailInfoManager.seoul), MainViewInfo(image: ImageManager.gwangju, mainInfo: MainInfoManager.gwangju, detailInfo: DetailInfoManager.gwangju), MainViewInfo(image: ImageManager.uijeongbu, mainInfo: MainInfoManager.uijeongbu, detailInfo: DetailInfoManager.uijeongbu), MainViewInfo(image: ImageManager.suwon, mainInfo: MainInfoManager.suwon, detailInfo: DetailInfoManager.suwon), MainViewInfo(image: ImageManager.daegu, mainInfo: MainInfoManager.daegu, detailInfo: DetailInfoManager.daegu), MainViewInfo(image: ImageManager.ulsan, mainInfo: MainInfoManager.ulsan, detailInfo: DetailInfoManager.ulsan), MainViewInfo(image: ImageManager.daejeon, mainInfo: MainInfoManager.daejeon, detailInfo: DetailInfoManager.daejeon), MainViewInfo(image: ImageManager.bucheon, mainInfo: MainInfoManager.bucheon, detailInfo: DetailInfoManager.bucheon)]),
        SectionOfMainViewData(header: HeaderManager.third, items: [MainViewInfo(image: ImageManager.nature, mainInfo: MainInfoManager.nature, detailInfo: nil), MainViewInfo(image: ImageManager.unique, mainInfo: MainInfoManager.unique, detailInfo: nil)])
    ]
    private lazy var storage = BehaviorSubject(value: mainViewData)
    
    func mainViewList() -> Observable<[SectionOfMainViewData]> {
        return storage
    }
}
