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
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }

}
