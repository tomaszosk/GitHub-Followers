//
//  Follower.swift
//  GitHub Followers
//
//  Created by Tomasz Oskroba on 1/7/20.
//  Copyright © 2020 Tomasz Oskroba. All rights reserved.
//

import Foundation

struct Follower: Codable, Hashable {
    var login: String
    var avatarUrl: String
    
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(login)
//    }
}
