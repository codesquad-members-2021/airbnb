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
    
    private var currentStateInt: Int
    private var currentState: CurrentState
    
    @IBOutlet weak var beforeButton: UIButton!
    @IBOutlet weak var afterButton: UIButton!
    
    @IBOutlet weak var conditionTableView: UITableView!
    @IBOutlet weak var content: UIStackView!
    
    @IBOutlet weak var adultCountLabel: UILabel!
    
    private var tableViewDataSource: FindingAccommodationTableViewDataSource!
    
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
        
        NotificationCenter.default.addObserver(self, selector: #selector(conditionDataUpdate), name: FindingAccommdationViewController.conditionDataUpdate, object: findingAccommdationCondition)
        
        self.conditionTableView.dataSource = tableViewDataSource
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: self)
        guard let NextViewController = segue.destination as? RoomInformationViewController else {
            return
        }
        requestAccommdation()
    }
    
    private func requestAccommdation() {
        let requestURL = MainAPIEndPoint.init(path: "/search", httpMethod: .get)
        
        Network.requestQueryString(with: requestURL, dataType: SearchResultData.self, queryParameter: self.findingAccommdationCondition) { result in
            switch result {
            case .success(let data):
                print(data)
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func takelocationBeforeController(location: String) {
        self.findingAccommdationCondition.insertData(location: location)
    }
    
    private func scrollPage() {
        let totalWidth = CGFloat(findingAccommdationConditionView.contentSize.width)
        let viewCount = CGFloat(self.content.subviews.count)
        
        
        self.findingAccommdationConditionView.setContentOffset(CGPoint(x: totalWidth / viewCount * CGFloat(currentState.value), y: 0), animated: true)
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
        guard let peopleCount = self.findingAccommdationCondition.people else {
            return
        }
        self.adultCountLabel.text = findingAccommdationCondition.convert(peopleCount: peopleCount)
    }
    
    @IBAction func pressedMincost(_ sender: Any) {
        self.findingAccommdationCondition.update(minCost: "10000")
    }
    
    @IBAction func pressedMaxCost(_ sender: Any) {
        self.findingAccommdationCondition.update(maxCost: "150000")
    }
    
    @IBAction func pressedPeopleMinus(_ sender: Any) {
        self.findingAccommdationCondition.update(people: 1, isAdd: false)
    }
    
    @IBAction func pressedPeoplePlus(_ sender: Any) {
        self.findingAccommdationCondition.update(people: 1, isAdd: true)
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
        case 2:
            self.currentState = .people
            self.beforeButton.setTitle("이전", for: .normal)
            self.afterButton.setTitle("검색", for: .normal)
        default:
            break
        }
    }
}

extension FindingAccommdationViewController {
    static let conditionDataUpdate = Notification.Name("conditionDataUpdate")
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
