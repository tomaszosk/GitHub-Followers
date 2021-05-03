//
//  UIView+Ext.swift
//  GitHub Followers
//
//  Created by Tomasz Oskroba on 5/3/21.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
