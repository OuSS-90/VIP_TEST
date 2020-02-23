//
//  BaseTabBarController.swift
//  VIP_TEST
//
//  Created by OuSS on 2/23/20.
//  Copyright © 2020 OuSS. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let homeVC = HomeViewController(nibName: "HomeViewController", bundle: nil)
        let nav = UINavigationController(rootViewController: homeVC)
        homeVC.title = "Home"
        homeVC.tabBarItem.title = "Home"
        homeVC.tabBarItem.image = #imageLiteral(resourceName: "Search")
        viewControllers = [nav]
    }
}
