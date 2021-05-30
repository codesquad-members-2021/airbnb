//
//  DIContainer.swift
//  airbnb
//
//  Created by Song on 2021/05/30.
//

import UIKit

final class HomeDIContainer {
    
    private let storyboard = StoryboardFactory.create(.main)
    
    enum Controller {
        static let rootNavigation = "RootNavigationController"
        static let tabBar = "HomeTabBarController"
        static let wishList = "WishListViewController"
        static let logIn = "LogInViewController"
    }

    func makeHomeNavigationController() -> UINavigationController {
        let id = Controller.rootNavigation
        let homeNavigationController = storyboard.instantiateViewController(withIdentifier: id) as? UINavigationController ?? UINavigationController()
        return homeNavigationController
    }
    
    func makeHomeTabBarController() -> UITabBarController {
        let id = Controller.tabBar
        let homeTabBarController = storyboard.instantiateViewController(withIdentifier: id) as? UITabBarController ?? UITabBarController()
        let viewControllers = [makeHomeViewController(), makeWishListViewController(), makeLogInViewController()]
        homeTabBarController.setViewControllers(viewControllers, animated: true)
        return homeTabBarController
    }
    
    private func makeHomeViewController() -> HomeViewController {
        return HomeViewController.create(with: makeHomeViewModel())
    }
    
    private func makeHomeViewModel() -> HomeViewModel {
        return HomeViewModel()
    }
    
    private func makeWishListViewController() -> UIViewController {
        let id = Controller.wishList
        return storyboard.instantiateViewController(withIdentifier: id)
    }
    
    private func makeLogInViewController() -> UIViewController {
        let id = Controller.logIn
        return storyboard.instantiateViewController(withIdentifier: id)
    }
    
}
