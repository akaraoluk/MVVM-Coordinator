//
//  SecondTabCoordinator.swift
//  MVVM+Coordinator
//
//  Created by Abdurrahman Karaoluk on 17.07.2024.
//

import Foundation
import UIKit

class SecondTabCoordinator: Coordinator {
    
    var rootViewController = UINavigationController()
    
    lazy var secondViewController: SecondViewController = {
        let vc = SecondViewController()
        vc.title = "Second"
        return vc
    }()
    
    func start() {
        rootViewController.setViewControllers([secondViewController], animated: false)
    }
    
    
}
