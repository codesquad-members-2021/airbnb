import Foundation
import RxSwift
import RxCocoa

protocol CommonViewModelType {
    associatedtype ViewDataType
    func getViewData() -> Driver<[ViewDataType]>
    
}
