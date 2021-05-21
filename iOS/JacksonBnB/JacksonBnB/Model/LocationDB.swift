//
//  LocationDB.swift
//  JacksonBnB
//
//  Created by jinseo park on 5/21/21.
//

import Foundation
import RealmSwift

class LocationDB: Object {
    
    @objc dynamic var id: Int = 1
    @objc dynamic var name: String = ""
    @objc dynamic var imageName: String = ""
    
    override class func primaryKey() -> String? {
        return "id"
    }
}
