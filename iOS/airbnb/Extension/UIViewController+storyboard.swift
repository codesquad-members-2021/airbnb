//
//  UIViewController+storyboard.swift
//  airbnb
//
//  Created by 박혜원 on 2021/06/03.
//

import UIKit

extension UIViewController {
    
    static func instantiate(name: String, bundle: Bundle? = nil) -> Self {
        // this pulls out "MyApp.MyViewController"
        let fullName = NSStringFromClass(self)

        // this splits by the dot and uses everything after, giving "MyViewController"
        let className = fullName.components(separatedBy: ".")[1]

        // load our storyboard
        let storyboard = UIStoryboard(name: name, bundle: bundle)

        // instantiate a view controller with that identifier, and force cast as the type that was requested
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
    
}
