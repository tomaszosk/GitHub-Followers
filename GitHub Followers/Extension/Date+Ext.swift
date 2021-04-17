//
//  Date+Ext.swift
//  GitHub Followers
//
//  Created by Tomasz Oskroba on 4/17/21.
//

import Foundation

extension Date {
    
    func convertToMonthTearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)      
    }
}
