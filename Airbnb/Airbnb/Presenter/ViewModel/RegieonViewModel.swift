import Foundation
import RxSwift
import RxCocoa

final class RegieonViewModel: CommonViewModelType {
    
    private let disposeBag = DisposeBag()
    
    private let secondViewData = [MainViewInfo(image: ImageManager.seoul, mainInfo: MainInfoManager.seoul, detailInfo: DetailInfoManager.seoul), MainViewInfo(image: ImageManager.gwangju, mainInfo: MainInfoManager.gwangju, detailInfo: DetailInfoManager.gwangju), MainViewInfo(image: ImageManager.uijeongbu, mainInfo: MainInfoManager.uijeongbu, detailInfo: DetailInfoManager.uijeongbu), MainViewInfo(image: ImageManager.suwon, mainInfo: MainInfoManager.suwon, detailInfo: DetailInfoManager.suwon), MainViewInfo(image: ImageManager.daegu, mainInfo: MainInfoManager.daegu, detailInfo: DetailInfoManager.daegu), MainViewInfo(image: ImageManager.ulsan, mainInfo: MainInfoManager.ulsan, detailInfo: DetailInfoManager.ulsan), MainViewInfo(image: ImageManager.daejeon, mainInfo: MainInfoManager.daejeon, detailInfo: DetailInfoManager.daejeon), MainViewInfo(image: ImageManager.bucheon, mainInfo: MainInfoManager.bucheon, detailInfo: DetailInfoManager.bucheon)]
    
   
    let searchText = BehaviorRelay<String>(value: "")
    private let filteredItems = BehaviorRelay<[MainViewInfo]>(value: [])
    private lazy var items = BehaviorRelay<[MainViewInfo]>(value: secondViewData)
    
    init() {
        setupRegiondata()
    }
    
    func getFilteredData() -> Driver<[MainViewInfo]> {
        return filteredItems.asDriver(onErrorJustReturn: [])
    }
    
    func getViewData() -> Driver<[MainViewInfo]> {
        return items.asDriver(onErrorJustReturn: [])
    }
    
    private func setupRegiondata() {
        searchText.asObservable()
            .subscribe(onNext: { text in
                self.items.asObservable()
                    .map{$0.filter{$0.mainInfo.hasPrefix(text)}}
                    .bind(to: self.filteredItems)
                    .disposed(by: self.disposeBag)
            }).disposed(by: disposeBag)
    }
}
