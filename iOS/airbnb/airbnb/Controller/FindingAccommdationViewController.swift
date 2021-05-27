//
//  ConditionViewController.swift
//  airbnb
//
//  Created by 박정하 on 2021/05/20.
//

import UIKit

class FindingAccommdationViewController: UIViewController {
    
    @IBOutlet weak var findingAccommdationConditionView: UIScrollView!

    private let findingAccommdationCondition: FindingAccommdationCondition
    
    private var calendarView: CalendarView
    private let calendarDelegate: CalendarViewDelgate
    
    @IBOutlet weak var costGraphView: CostGraphView!
    private var currentStateInt: Int
    private var currentState: CurrentState
    
    @IBOutlet weak var beforeButton: UIButton!
    @IBOutlet weak var afterButton: UIButton!
    
    @IBOutlet weak var conditionTableView: UITableView!
    @IBOutlet weak var content: UIStackView!
    
    @IBOutlet weak var adultCountLabel: UILabel!
    
    private var tableViewDataSource: FindingAccommodationTableViewDataSource!
    private var costGraph = CostGraph(averagePrice: 0, numberOfRooms: [])
    
    private var network = Network()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        self.currentStateInt = 0
        self.findingAccommdationCondition = FindingAccommdationCondition()
        self.calendarDelegate = CalendarViewDelgate(conditionData: self.findingAccommdationCondition)
        self.currentState = .date
        self.calendarView = CalendarView.init()
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        self.currentStateInt = 0
        self.findingAccommdationCondition = FindingAccommdationCondition()
        self.calendarDelegate = CalendarViewDelgate.init(conditionData: self.findingAccommdationCondition)
        self.currentState = .date
        self.calendarView = CalendarView.init()
        self.tableViewDataSource = FindingAccommodationTableViewDataSource.init(condition: self.findingAccommdationCondition)
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "숙소찾기"
        self.beforeButton.setTitle("", for: .normal)
        self.afterButton.setTitle("다음", for: .normal)
        initCalendarView()
        
        NotificationCenter.default.addObserver(self, selector: #selector(conditionDataUpdate), name: FindingAccommdationViewController.conditionDataUpdate, object: nil)
        
//        NotificationCenter.default.addObserver(self, selector: #selector(costGraphDataUpdate), name: FindingAccommdationViewController.conditionDataUpdate, object: nil)
//
        costGraphView.update(minCost: "₩10000", maxCost: "₩160000", averageCost: "qweqweqwe")
        self.conditionTableView.dataSource = tableViewDataSource
    }
    
    @IBAction func pressedPreButton(_ sender: Any) {
        if self.currentState == .date {
            return
        }
        self.currentStateInt -= 1
        self.updatecurrentState()
        scrollPage()
    }
    
    @IBAction func pressedNextButton(_ sender: Any) {
        if currentState == .people {
            performSegue(withIdentifier: "RoomInformationViewController", sender: nil)
            return
        }
        self.currentStateInt += 1
        self.updatecurrentState()
        scrollPage()
    }
    
    @objc func conditionDataUpdate() {
        self.conditionTableView.reloadData()
        self.adultCountLabel.text = findingAccommdationCondition.peopleCount
    }
    
//    @objc func costGraphDataUpdate() {
//        costGraphView.update(minCost: "₩10000", maxCost: "₩160000", averageCost: "qweqweqwe")
//    }
    
    func takelocationBeforeController(location: String) {
        self.findingAccommdationCondition.insertData(location: location)
    }
    
    @IBAction func pressedMincost(_ sender: Any) {
        self.findingAccommdationCondition.update(minCost: "₩1000")
    }
    
    @IBAction func pressedMaxCost(_ sender: Any) {
        self.findingAccommdationCondition.update(maxCost: "₩150000")
    }
    
    @IBAction func pressedPeopleMinus(_ sender: Any) {
        self.findingAccommdationCondition.update(people: 1, isAdd: false)
    }
    
    @IBAction func pressedPeoplePlus(_ sender: Any) {
        self.findingAccommdationCondition.update(people: 1, isAdd: true)
    }
    
    private func scrollPage() {
        let totalWidth = CGFloat(findingAccommdationConditionView.contentSize.width)
        let viewCount = CGFloat(self.content.subviews.count)
        
        
        self.findingAccommdationConditionView.setContentOffset(CGPoint(x: totalWidth / viewCount * CGFloat(currentState.value), y: 0), animated: true)
    }
}

extension FindingAccommdationViewController {
    
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
            self.beforeButton.setTitle("", for: .normal)
            self.afterButton.setTitle("다음", for: .normal)
        case 1:
            self.currentState = .cost
            self.beforeButton.setTitle("이전", for: .normal)
            self.afterButton.setTitle("다음", for: .normal)
            fetchCostGraph()
        case 2:
            self.currentState = .people
            self.beforeButton.setTitle("이전", for: .normal)
            self.afterButton.setTitle("검색", for: .normal)
        default:
            break
        }
    }
    
    func fetchCostGraph() {
        let endPoint = MainAPIEndPoint(path: "/search/1", httpMethod: .get)
        network.request(with: endPoint, dataType: CostGraph.self) { (result) in
            switch result {
            case .failure(let error):
                print(error)
            case .success(let data):
                self.costGraph = data
            }
        }
    }
}

extension FindingAccommdationViewController {
    static let conditionDataUpdate = Notification.Name("conditionDataUpdate")
    static let costGraphDataUpdate = Notification.Name("costGraphDataUpdate")
}

extension FindingAccommdationViewController {
    func initCalendarView() {
        guard let contentFirst = content.subviews.first else {
            return
        }
        self.calendarView.frame = CGRect(origin: contentFirst.frame.origin, size: contentFirst.frame.size)
        contentFirst.addSubview(self.calendarView)
        self.calendarView.delegate = calendarDelegate
    }
}
