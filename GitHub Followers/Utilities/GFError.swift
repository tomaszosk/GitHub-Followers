//
//  GFError.swift
//  GitHub Followers
//
//  Created by Tomasz Oskroba on 1/7/20.
//  Copyright © 2020 Tomasz Oskroba. All rights reserved.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request. Please try again"
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data received from the server was invalid. Please try again."
}
