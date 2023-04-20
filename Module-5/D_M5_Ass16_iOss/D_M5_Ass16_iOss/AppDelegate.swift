//
//  AppDelegate.swift
//  D_M5_Ass16_iOss
//
//  Created by Dharmesh N. Agravat on 20/04/23.
//

import UIKit

var appDel = UIApplication.shared.delegate as? AppDelegate

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
//        goToHome()
        goToLogin()
        return true
    }
    
    func goToHome() {
        var getStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        let nav = getStoryBoard.instantiateViewController(withIdentifier: "thirdVC") as? ThirdViewController
        window?.rootViewController = UINavigationController(rootViewController: nav ?? UIViewController())
        window?.makeKeyAndVisible()
    }
    
    func goToLogin() {
        var getStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        let nav = getStoryBoard.instantiateViewController(withIdentifier: "ViewController") as? ViewController
        window?.rootViewController = UINavigationController(rootViewController: nav ?? UIViewController())
        window?.makeKeyAndVisible()
    }


}

