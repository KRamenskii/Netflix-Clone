//
//  MainTabBarViewController.swift
//  Netflix Clone
//
//  Created by Кирилл Раменский on 17.10.2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemYellow
        
        let homeNavigationController = UINavigationController(rootViewController: HomeViewController())
        let upcomingNavigationController = UINavigationController(rootViewController: UpcomingViewController())
        let searchNavigationController = UINavigationController(rootViewController: SearchViewController())
        let downloadsNavigationController = UINavigationController(rootViewController: DownloadsViewController())
        
        homeNavigationController.tabBarItem.image = UIImage(systemName: "house")
        upcomingNavigationController.tabBarItem.image = UIImage(systemName: "play.circle")
        searchNavigationController.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        downloadsNavigationController.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        homeNavigationController.title = "Home"
        upcomingNavigationController.title = "Coming"
        searchNavigationController.title = "Top Search"
        downloadsNavigationController.title = "Downloads"
        
        tabBar.tintColor = .label
        
        setViewControllers([homeNavigationController, upcomingNavigationController, searchNavigationController, downloadsNavigationController], animated: true)
    }
}
