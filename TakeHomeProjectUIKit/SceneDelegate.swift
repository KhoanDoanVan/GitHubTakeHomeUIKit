//
//  SceneDelegate.swift
//  TakeHomeProjectUIKit
//
//  Created by Đoàn Văn Khoan on 29/7/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        /// Fill up the full screen
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        
        window?.windowScene = windowScene
        
        /// Create Tabbar Controller
        let tabbar = createTabbar()
        
        /// set view controller
        window?.rootViewController = tabbar
        
        /// set visible
        window?.makeKeyAndVisible()
    }
    
    /// Create Navigation Controller
    func createSearchNavigationController() -> UINavigationController {
        let searchViewController = SearchViewController()
        searchViewController.title = "Search"
        searchViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0) // UI TabItem with image is .search
        
        return UINavigationController(rootViewController: searchViewController)
    }
    
    /// Create Navigation Controller
    func createFavouritesNavigationController() -> UINavigationController {
        let favouritesListViewController = FavouritesListViewController()
        favouritesListViewController.title = "Favourites"
        favouritesListViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1) // UI TabItem with image is .favourites
        
        return UINavigationController(rootViewController: favouritesListViewController)
    }
    
    /// Create Tabbar Controller
    func createTabbar() -> UITabBarController {
        let tabbar = UITabBarController()
        UITabBar.appearance().tintColor = .systemGreen
        tabbar.viewControllers = [
            createSearchNavigationController(),
            createFavouritesNavigationController()
        ]
        
        return tabbar
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

