//
//  Env.swift
//  airbnb
//
//  Created by 박정하 on 2021/05/27.
//

import UIKit

class Env {
    
    static var iPad: Bool {
        return UIDevice.current.userInterfaceIdiom == .pad
    }
}
