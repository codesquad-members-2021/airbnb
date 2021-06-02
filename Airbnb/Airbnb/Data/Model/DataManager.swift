import UIKit

enum ImageManager {
    static let main = "main"
    static let seoul = "seoul"
    static let gwangju = "gwangju"
    static let uijeongbu = "uijeongbu"
    static let suwon = "suwon"
    static let daegu = "daegu"
    static let ulsan = "ulsan"
    static let daejeon = "daejeon"
    static let bucheon = "bucheon"
    static let nature = "nature"
    static let unique = "unique"
}

enum MainInfoManager {
    static let main = "슬기로운 자연생활"
    static let seoul = "서울"
    static let gwangju = "광주"
    static let uijeongbu = "의정부시"
    static let suwon = "수원시"
    static let daegu = "대구"
    static let ulsan = "울산"
    static let daejeon = "대전"
    static let bucheon = "부천시"
    static let nature = "자연생활을 만끽할 수 있는 숙소"
    static let unique = "독특한 공간"
}

enum HeaderManager {
    static let first = ""
    static let second = "가까운 여행지 둘러보기"
    static let third = "어디에서나, 여행은 살아보는거야!"
}

enum DetailInfoManager {
    static let main = "에어비앤비가 엄선한 위시리스트를 만나보세요."
    static let seoul = "30분"
    static let gwangju = "4시간"
    static let uijeongbu = "30분"
    static let suwon = "45분"
    static let daegu = "3.5시간"
    static let ulsan = "4.5시간"
    static let daejeon = "2시간"
    static let bucheon = "30분"
}

enum ControllerPage {
    static let main = 0
    static let search = 1
}

enum PriceInfo {
    static let accommodation = [2_000_000, 2_000_000, 2_000_000, 2_000_000, 50_000, 50_000, 50_000, 50_000, 50_000, 800_000, 800_000, 800_000]
    static let graph:[CGFloat] = [2_000_000, 2_000_000, 2_000_000, 2_000_000, 50_000, 50_000, 50_000, 50_000, 50_000, 800_000, 800_000, 800_000]
}
