//
//  NumberOfHeadSelectionView.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/05/27.
//

import UIKit

protocol GuestNumberInfoReceivable {
    func addGuest(type: GuestType)
    func reduceGuest(type: GuestType)
}

class NumberOfHeadSelectionView: UIView {
    
    private var adultNumberAdjustmentView: NumberAdjustmentView?
    private var childNumberAdjustmentView: NumberAdjustmentView?
    private var infantNumberAdjustmentView: NumberAdjustmentView?
    
    public var guestNumberInfoReceivable: GuestNumberInfoReceivable?
    
    public init() {
        super.init(frame: .zero)
        configureNumberAdjustmentViews()
        setActionToButtons()
        configureNotificationCenter()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    private func configureNumberAdjustmentViews() {

        self.adultNumberAdjustmentView = NumberAdjustmentView(.adult)
        self.childNumberAdjustmentView = NumberAdjustmentView(.child)
        self.infantNumberAdjustmentView = NumberAdjustmentView(.infant)
        
        guard let subView1 = adultNumberAdjustmentView else { return }
        guard let subView2 = childNumberAdjustmentView else { return }
        guard let subView3 = infantNumberAdjustmentView else { return }
        
        subView1.translatesAutoresizingMaskIntoConstraints = false
        subView2.translatesAutoresizingMaskIntoConstraints = false
        subView3.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(subView1)
        self.addSubview(subView2)
        self.addSubview(subView3)
        
        NSLayoutConstraint.activate([
            subView1.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
            subView1.widthAnchor.constraint(equalTo: self.widthAnchor),
            subView1.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.2),
            
            subView2.topAnchor.constraint(equalTo: subView1.bottomAnchor),
            subView2.widthAnchor.constraint(equalTo: self.widthAnchor),
            subView2.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.2),
            
            subView3.topAnchor.constraint(equalTo: subView2.bottomAnchor),
            subView3.widthAnchor.constraint(equalTo: self.widthAnchor),
            subView3.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.2)
        ])
    }
    
    private func setActionToButtons() {
        adultNumberAdjustmentView?.addTargetToPlusButton(action: UIAction.init(handler: { (touch) in
            self.guestNumberInfoReceivable?.addGuest(type: .adult)
        }))
        adultNumberAdjustmentView?.addTargetToMinusButton(action: UIAction.init(handler: { (touch) in
            self.guestNumberInfoReceivable?.reduceGuest(type: .adult)
        }))
        
        childNumberAdjustmentView?.addTargetToPlusButton(action: UIAction.init(handler: { (touch) in
            self.guestNumberInfoReceivable?.addGuest(type: .child)
        }))
        childNumberAdjustmentView?.addTargetToMinusButton(action: UIAction.init(handler: { (touch) in
            self.guestNumberInfoReceivable?.reduceGuest(type: .child)
        }))
        
        infantNumberAdjustmentView?.addTargetToPlusButton(action: UIAction.init(handler: { (touch) in
            self.guestNumberInfoReceivable?.addGuest(type: .infant)
        }))
        infantNumberAdjustmentView?.addTargetToMinusButton(action: UIAction.init(handler: { (touch) in
            self.guestNumberInfoReceivable?.reduceGuest(type: .infant)
        }))
    }
    
    private func configureNotificationCenter() {
        NotificationCenter.default.addObserver(self, selector: #selector(didChangeGuestNumber), name: .didChangeGuestNumber, object: nil)
    }
    
    @objc func didChangeGuestNumber(_ notification: Notification) {
        if let guestNumberData = notification.userInfo as? [GuestType: Int] {
            adultNumberAdjustmentView?.changeCountLabel(to: guestNumberData[.adult] ?? 0)
            childNumberAdjustmentView?.changeCountLabel(to: guestNumberData[.child] ?? 0)
            infantNumberAdjustmentView?.changeCountLabel(to: guestNumberData[.infant] ?? 0)
            
            setButtonAvailability(with: guestNumberData)
        }
    }
    
    private func setButtonAvailability(with guestNumberData: [GuestType: Int]) {
        adultNumberAdjustmentView?.minusButtonAvailability(with: guestNumberData[.adult] ?? 0)
        childNumberAdjustmentView?.minusButtonAvailability(with: guestNumberData[.child] ?? 0)
        infantNumberAdjustmentView?.minusButtonAvailability(with: guestNumberData[.infant] ?? 0)
        
        adultNumberAdjustmentView?.plusButtonAvailability(with: guestNumberData[.adult] ?? 0)
        childNumberAdjustmentView?.plusButtonAvailability(with: guestNumberData[.child] ?? 0)
        infantNumberAdjustmentView?.plusButtonAvailability(with: guestNumberData[.infant] ?? 0)
    }
}
