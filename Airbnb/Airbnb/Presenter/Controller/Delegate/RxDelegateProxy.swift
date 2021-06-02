import UIKit
import RxSwift
import RxCocoa

final class RxDelegateProxy: DelegateProxy<SecondSectionCell, SecondSectionCellDelegate>, DelegateProxyType, SecondSectionCellDelegate {
    
    static func registerKnownImplementations() {
        self.register { (secondSectionCell) -> RxDelegateProxy in
            RxDelegateProxy(parentObject: secondSectionCell, delegateProxy: self)
        }
    }
    
    static func currentDelegate(for object: SecondSectionCell) -> SecondSectionCellDelegate? {
        return object.delegate
    }
    
    static func setCurrentDelegate(_ delegate: SecondSectionCellDelegate?, to object: SecondSectionCell) {
        object.delegate = delegate
    }
}

extension Reactive where Base: SecondSectionCell {
    var rx_delegate: DelegateProxy<SecondSectionCell, SecondSectionCellDelegate> {
        return RxDelegateProxy.proxy(for: self.base)
    }
    
    var rx_sendInfo: Observable<String> {
        return rx_delegate.sentMessage(#selector(SecondSectionCellDelegate.move(_:))).map{ arr in (arr[0] as? String)!}
    }
}
