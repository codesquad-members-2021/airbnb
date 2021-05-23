//
//  AppDelegate.swift
//  airbnb
//
//  Created by 양준혁 on 2021/05/17.
//

import UIKit
import GooglePlaces

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        GMSPlacesClient.provideAPIKey("AIzaSyCIqVBA7myulwFQmuJwWVoYr4UdOThAvuw")
        return true
    }
}

