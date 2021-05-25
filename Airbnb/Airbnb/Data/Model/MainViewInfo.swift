import Foundation
import RxDataSources

struct MainViewInfo: Equatable {
    let image: String
    let mainInfo: String
    let detailInfo: String?
}


struct SectionOfMainViewData {
    var header:String
    var items: [Item]
}
extension SectionOfMainViewData: SectionModelType {
    typealias Item = MainViewInfo
    
    init(original: SectionOfMainViewData, items: [MainViewInfo]) {
        self = original
        self.items = items
    }
}
