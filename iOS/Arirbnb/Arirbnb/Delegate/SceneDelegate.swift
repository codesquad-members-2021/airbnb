//
//  SceneDelegate.swift
//  Arirbnb
//
//  Created by 지북 on 2021/05/17.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    private var sceneFlowCoordinator: AirbnbSceneFlowCoordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        
        sceneFlowCoordinator = AirbnbSceneFlowCoordinator()
        window?.rootViewController = sceneFlowCoordinator?.start()
        window?.makeKeyAndVisible()
    }
}

