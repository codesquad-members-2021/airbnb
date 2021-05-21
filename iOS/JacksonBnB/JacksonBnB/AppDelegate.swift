//
//  AppDelegate.swift
//  JacksonBnB
//
//  Created by jinseo park on 5/18/21.
//

import UIKit
import RealmSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    let locationIDs = [1,2,3,4,5]
    let locationNames = ["강동구","강서구","강남구","강북구","마포구"]
    let locationImageNames = ["CodeSquadHotel","CodeSquadHotel","CodeSquadHotel","CodeSquadHotel","CodeSquadHotel"]
    
    func applicationDidFinishLaunching(_ application: UIApplication) {
        
        
        let realm = try! Realm()
        
        for idx in 0..<5 {
            let locationDB = LocationDB(id: locationIDs[idx], name: locationNames[idx], imageName: locationImageNames[idx])
            try! realm.write {
                realm.add(locationDB)
            }
        }
        
        print(Realm.Configuration.defaultConfiguration.fileURL!)
    }
    
}
