//
//  FolllowerListViewController.swift
//  GitHub Followers
//
//  Created by Tomasz Oskroba on 1/6/20.
//  Copyright © 2020 Tomasz Oskroba. All rights reserved.
//

import UIKit

class FolllowerListViewController: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        
        NetworkManager.shared.getFollowers(for: username, page: 1) { result in
            
            switch result {
                case .success(let followers):
                    print(followers)
                case .failure(let error):
                    self.presentGFLAlertOnMainThread(title: "Bad stuff happened", message: error.rawValue, buttonTitle: "Ok")
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
