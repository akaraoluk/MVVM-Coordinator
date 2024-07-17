//
//  MainCoordinator.swift
//  MVVM+Coordinator
//
//  Created by Abdurrahman Karaoluk on 17.07.2024.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    var rootViewController = UITabBarController()
    
    var childCoordinator = [Coordinator]()

    init() {
        self.rootViewController = UITabBarController()
        rootViewController.tabBar.isTranslucent = true
        rootViewController.tabBar.backgroundColor = .lightGray
    }
    
    func start() {
        let firstCoordinator = FirstTabCoordinator()
        firstCoordinator.start()
        self.childCoordinator.append(firstCoordinator)
        let firstViewController = firstCoordinator.rootViewController
        setup(vc: firstViewController, title: "First Tab", imageName: "paperplane", selectedImageName: "paperplane.fill")
        
        let secondCoordinator = SecondTabCoordinator()
        secondCoordinator.start()
        self.childCoordinator.append(secondCoordinator)
        let secondViewController = secondCoordinator.rootViewController
        setup(vc: secondViewController, title: "Second Tab", imageName: "bell", selectedImageName: "bell.fill")
        
        self.rootViewController.viewControllers = [firstViewController, secondViewController]
    }
    
    func setup(vc: UIViewController, title: String, imageName: String, selectedImageName: String) {
        let defaultImage = UIImage(systemName: imageName)
        let selectedImageName = UIImage(systemName: selectedImageName)
        let tabBarItem = UITabBarItem(title: title, image: defaultImage, selectedImage: selectedImageName)
        vc.tabBarItem = tabBarItem
    }
    
    
}
