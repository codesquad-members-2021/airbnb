//
//  ConditionViewController.swift
//  airbnb
//
//  Created by 박정하 on 2021/05/20.
//

import UIKit

class ConditionViewController: UIViewController {
    
    @IBOutlet weak var conditionViews: UIScrollView!
    
    
    private let conditionData: ConditionData
    
    private var calendarView: CalendarView!
    private let calendarDelegate: CalendarViewDelgate
    
    private var currentStateInt: Int
    private var currentState: CurrentState
    
    @IBOutlet weak var conditionTableView: UITableView!
    @IBOutlet weak var content: UIStackView!
    
    @IBOutlet weak var adultCountLabel: UILabel!
    
    private var tableViewDataSource: ConditionViewTableViewDataSource!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        self.currentStateInt = 0
        self.conditionData = ConditionData()
        self.calendarDelegate = CalendarViewDelgate()
        self.currentState = ConditionViewController.CurrentState.date
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        self.currentStateInt = 0
        self.conditionData = ConditionData()
        self.calendarDelegate = CalendarViewDelgate()
        self.currentState = ConditionViewController.CurrentState.date
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initCalendarView()
        
        NotificationCenter.default.addObserver(self, selector: #selector(conditionDataUpdate), name: ConditionViewController.conditionDataUpdate, object: conditionData)
        self.tableViewDataSource = ConditionViewTableViewDataSource.init(condition: self.conditionData)
        self.conditionTableView.dataSource = tableViewDataSource
    }
    
    @IBAction func pressedPreButton(_ sender: Any) {
        if self.currentState == .date {
            return
        }
        self.currentStateInt -= 1
        self.updatecurrentState()
        self.conditionViews.setContentOffset(CGPoint(x: conditionViews.contentSize.width/3 * CGFloat(currentState.value), y: 0), animated: true)
    }
    
    @IBAction func pressedNextButton(_ sender: Any) {
        if currentState == .people{
            return
        }
        self.currentStateInt += 1
        self.updatecurrentState()
        self.conditionViews.setContentOffset(CGPoint(x: conditionViews.contentSize.width/3 * CGFloat(currentState.value), y: 0), animated: true)
    }
    
    @objc func conditionDataUpdate() {
        self.conditionTableView.reloadData()
        guard let peopleCount = self.conditionData.people else {
            return
        }
        self.adultCountLabel.text = String(peopleCount)
    }
    
    func takelocationBeforeController(location: String) {
        self.conditionData.insertData(location: location)
    }
    
    @IBAction func pressedMincost(_ sender: Any) {
        self.conditionData.update(minCost: "₩1000")
    }
    
    @IBAction func pressedMaxCost(_ sender: Any) {
        self.conditionData.update(maxCost: "₩150000")
    }
    
    @IBAction func pressedPeopleMinus(_ sender: Any) {
        self.conditionData.update(people: 1, plus: false)
    }
    
    @IBAction func pressedPeoplePlus(_ sender: Any) {
        self.conditionData.update(people: 1, plus: true)
    }
}

extension ConditionViewController {
    
    enum CurrentState: Int {
        case date = 0
        case cost = 1
        case people = 2
        
        var value: Int {
            return rawValue
        }
    }
    
    func updatecurrentState() {
        switch self.currentStateInt {
        case 0:
            self.currentState = .date
        case 1:
            self.currentState = .cost
        case 2:
            self.currentState = .people
        default:
            break
        }
    }
}

extension ConditionViewController {
    static let conditionDataUpdate = Notification.Name("conditionDataUpdate")
}

extension ConditionViewController {
    func initCalendarView() {
        self.calendarView = CalendarView.init(frame: CGRect(origin: self.content.subviews[0].frame.origin, size: self.content.subviews[1].frame.size))
        self.content.subviews[0].addSubview(self.calendarView)
        self.calendarView.delegate = calendarDelegate
    }
}
