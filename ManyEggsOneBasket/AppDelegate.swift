//
//  AppDelegate.swift
//  ManyEggsOneBasket
//
//  Created by Geoffrey Johnson on 2/05/22.
//

import UIKit
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        // TODO: Config Sign In with Google / Apple
//        GIDSignIn.sharedInstance().clientID = FirebaseApp.app()?.options.clientID
//        GIDSignIn.sharedInstance().delegate = self
        
        return true
    }
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        let sceneConfig = UISceneConfiguration(name: nil, sessionRole: connectingSceneSession.role)
         sceneConfig.delegateClass = SceneDelegate.self
         return sceneConfig
    }
    
//    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error?) {
//      if let error = error {
//        print("Error \(error)")
//        return
//      }
//
//      guard let authentication = user.authentication else { return }
//      let credential = GoogleAuthProvider.credential(withIDToken: authentication.idToken,
//                                                        accessToken: authentication.accessToken)
//      Auth.auth().signIn(with: credential) { (user, error) in
//        if let error = error {
//          print("Error \(error)")
//          return
//        }
//      }
//    }
}
