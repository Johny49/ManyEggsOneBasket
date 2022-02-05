//
//  SceneDelegate.swift
//  Talk-To-Me
//
//  Created by Geoffrey Johnson on 1/29/22.
//

import SwiftUI
import UIKit

class SceneDelegate: NSObject, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Create the SwiftUI view that provides the window contents.
        let contentView = ContentView().environmentObject(SceneDelegate.selectedTheme)
        
        //Firebase
        let session = FirebaseSession()
        
        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView.environmentObject(session))
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}
