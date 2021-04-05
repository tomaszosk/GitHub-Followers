//
//  ErrorMessage.swift
//  GitHub Followers
//
//  Created by Tomasz Oskroba on 4/5/21.
//

import Foundation

enum ErrorMessage: String {
    case invalidUsername = "This username created invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data received from the server was invalid. Please try again."
}
