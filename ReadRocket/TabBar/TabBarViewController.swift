//
//  TabBarViewController.swift
//  ReadRocket
//
//  Created by Shakir Kadirov on 24.02.2024.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let homeVC = UINavigationController(rootViewController: HomeViewController())
        homeVC.tabBarItem.image = UIImage(systemName: "house")
        homeVC.tabBarItem.title = "Home"
        
        let searchVC = SearchViewController()
        searchVC.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        searchVC.tabBarItem.title = "Search"
        
        let favoritesVC = FavoritesViewController()
        favoritesVC.tabBarItem.image = UIImage(systemName: "star")
        favoritesVC.tabBarItem.title = "Favorites"
        
        let profileVC = ProfileViewController()
        profileVC.tabBarItem.image = UIImage(systemName: "person.crop.circle")
        profileVC.tabBarItem.title = "Profile"
        
        self.tabBar.backgroundColor = .systemGray4
        self.viewControllers = [homeVC, searchVC, favoritesVC, profileVC]
    }
}
