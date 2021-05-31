//
//  RoomInformationViewController.swift
//  airbnb
//
//  Created by 심영민 on 2021/05/24.
//

import UIKit

class RoomInformationViewController: UIViewController {
    @IBOutlet weak var roomInformationCollectionView: UICollectionView!
    
    private var roomSearchResult: SearchResult
    private var roomInformationViewDataSource: RoomInformationViewDataSource
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        self.roomSearchResult = SearchResult.init()
        self.roomInformationViewDataSource = RoomInformationViewDataSource.init(searchResult: roomSearchResult)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        self.roomSearchResult = SearchResult.init()
        self.roomInformationViewDataSource = RoomInformationViewDataSource.init(searchResult: roomSearchResult)
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(updateRoomList), name: Notification.roomEntityUpdate, object: roomSearchResult)
        self.tabBarController?.tabBar.isHidden = false
        self.navigationItem.title = "숙소찾기"
        self.roomInformationCollectionView.dataSource = roomInformationViewDataSource
    }
    
    func insert(searchResult: SearchResult) {
        self.roomSearchResult.update(properties: searchResult.properties)
    }
    
    @objc func updateRoomList() {
        self.roomInformationCollectionView.reloadData()
    }
}
