//
//  AppDelegate.swift
//  dime
//
//  Created by Rafael Soh on 24/8/22.
//

import SwiftUI
import InstabugSDK

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(
        _: UIApplication,
        configurationForConnecting connectingSceneSession: UISceneSession,
        options _: UIScene.ConnectionOptions
    ) -> UISceneConfiguration {
        let sceneConfiguration = UISceneConfiguration(name: "Default", sessionRole: connectingSceneSession.role)
        sceneConfiguration.delegateClass = SceneDelegate.self
        return sceneConfiguration
    }
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        Instabug.start(withToken: "cdeff356910e699a1410eb46f2e3821d", invocationEvents: [.floatingButton, .shake, .screenshot])
        return true
    }
}
