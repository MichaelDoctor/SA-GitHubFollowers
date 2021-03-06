//
//  SceneDelegate.swift
//  GitHub Followers
//
//  Created by Michael Doctor on 2021-06-04.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        // Make ViewController.swift the Main Interface
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        // tab bar > nav controllers > view controllers
        window?.rootViewController = GFTabBarController()
        window?.makeKeyAndVisible()
        
        configureNavigationBar()
    }

    
    func sceneDidDisconnect(_ scene: UIScene) {}

    func sceneDidBecomeActive(_ scene: UIScene) {}

    func sceneWillResignActive(_ scene: UIScene) {}

    func sceneWillEnterForeground(_ scene: UIScene) {}

    func sceneDidEnterBackground(_ scene: UIScene) {}
}

//MARK: - Custom
extension SceneDelegate {
    
    func configureNavigationBar() {
        UINavigationBar.appearance().tintColor = .systemGreen
    }
}

