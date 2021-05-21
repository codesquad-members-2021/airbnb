//
//  DataBaseManager.swift
//  JacksonBnB
//
//  Created by jinseo park on 5/21/21.
//

import Foundation
import RealmSwift

private protocol DBOperations {
    func getLocations() -> Locations
}
class DataBaseManager: DBOperations {
    
    let realm = try! Realm()
    
    func getLocations() -> Locations {
        var allLocations = Locations(locations: [])
        let locationsDB = realm.objects(LocationDB.self)
        
        locationsDB.forEach{ locationDB in
            let location = Location(id: locationDB.id, name: locationDB.name, imageName: locationDB.imageName)
            allLocations.locations.append(location)
        }
        
        return allLocations
    }
}
