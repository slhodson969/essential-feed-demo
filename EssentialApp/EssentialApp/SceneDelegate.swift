//
//  SceneDelegate.swift
//  EssentialApp
//
//  Created by Scott Hodson on 11/10/2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    private lazy var navigationController = UINavigationController()
    
    func configureWindow() {
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}
