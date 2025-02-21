//
//  SceneDelegate.swift
//  ItemList
//
//  Created by Ricardo Montesinos on 21/02/25.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {

        // Ensure we have a valid UIWindowScene
        guard let windowScene = (scene as? UIWindowScene) else { return }

        // Initialize the UIWindow with the windowScene
        window = UIWindow(windowScene: windowScene)
        
        // Initialize the root view controller (ItemListViewController)
        let itemListVC = ItemListViewController()
        
        // Embed in UINavigationController for navigation bar
        let navigationController = UINavigationController(rootViewController: itemListVC)
        
        // Set the root view controller
        window?.rootViewController = navigationController
        
        // Make the window visible
        window?.makeKeyAndVisible()
    }

    // MARK: - Other Scene Lifecycle Methods (Optional)

    func sceneDidDisconnect(_ scene: UIScene) { }

    func sceneDidBecomeActive(_ scene: UIScene) { }

    func sceneWillResignActive(_ scene: UIScene) { }

    func sceneWillEnterForeground(_ scene: UIScene) { }

    func sceneDidEnterBackground(_ scene: UIScene) { }
}
