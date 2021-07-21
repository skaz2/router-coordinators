//
//  HomeViewController.swift
//  RoterCoordinator
//
//  Created by Sergey Kharlamov on 21.07.2021.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    private lazy var coordinator = AppCoordinator(router: AppRouter(window: window))

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        coordinator.start()
        window?.makeKeyAndVisible()
        
        return true
    }
}

