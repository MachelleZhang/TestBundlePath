//
//  AppDelegate.swift
//  TestBundlePath
//
//  Created by ZhangLe on 2020/7/17.
//  Copyright © 2020 AsiaInfo Mobile. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let mainVC = TouchViewController()
        let nav = UINavigationController.init(rootViewController: mainVC)
        
        window = UIWindow()
        window?.frame = UIScreen.main.bounds
        window?.backgroundColor = .white
        window?.rootViewController = nav
        window?.makeKeyAndVisible()
        
        return true
    }
}

