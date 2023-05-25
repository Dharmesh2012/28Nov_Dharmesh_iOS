//
//  AppDelegate.swift
//  D_M678_Ass_4_iOs
//
//  Created by Dharmesh N. Agravat on 20/04/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        saveDatabaseInDocumentDirectory()
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

// Save database in document directory
let locatDatabaseName = "/myData.db"
let tableName = "demoTable"

extension AppDelegate {
    func saveDatabaseInDocumentDirectory() {
        var strPath = ""
        let directoryPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        strPath = directoryPath + locatDatabaseName
        print(strPath)
        
        if !FileManager.default.fileExists(atPath: strPath)  {
            do {
                guard let localDB = Bundle.main.path(forResource: "myData", ofType: "db") else { return }
                try FileManager.default.copyItem(atPath: localDB, toPath: strPath)
                print("Database file copy!")
            } catch {
                print(error.localizedDescription)
            }
        } else {
            print("File is already exists!")
        }
    }
}