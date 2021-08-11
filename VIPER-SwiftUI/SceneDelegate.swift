//
//  SceneDelegate.swift
//  VIPER-SwiftUI
//
//  Created by 김두리 on 2021/08/09.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder {
    
    var window: UIWindow?
}

extension SceneDelegate: UIWindowSceneDelegate {
    
    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        
        
        guard let windowScene = scene as? UIWindowScene else {
            return
        }
        let window = UIWindow(windowScene: windowScene)
        self.window = window
        window.rootViewController = TodoModule().build()
        window.makeKeyAndVisible()
    }

}

