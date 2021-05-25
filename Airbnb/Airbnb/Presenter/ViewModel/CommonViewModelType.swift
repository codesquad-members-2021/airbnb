import Foundation
import RxSwift
import RxCocoa

protocol CommonViewModelType {
    
    func getViewData() -> Driver<[MainViewInfo]>
    
}
