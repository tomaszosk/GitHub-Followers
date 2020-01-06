//
//  UIViewController+Rxt.swift
//  GitHub Followers
//
//  Created by Tomasz Oskroba on 1/6/20.
//  Copyright © 2020 Tomasz Oskroba. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func presentGFLAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertViewController = GFAlertViewController(title: title, message: message, buttonTitle: buttonTitle)
            alertViewController.modalPresentationStyle = .overFullScreen
            alertViewController.modalTransitionStyle = .crossDissolve
            self.present(alertViewController, animated: true)
        }
    }
}
