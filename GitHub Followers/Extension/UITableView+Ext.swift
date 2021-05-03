//
//  UITableView+Ext.swift
//  GitHub Followers
//
//  Created by Tomasz Oskroba on 5/3/21.
//

import UIKit

extension UITableView {
    
    // Not used, but for future reference
    func reloadDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
