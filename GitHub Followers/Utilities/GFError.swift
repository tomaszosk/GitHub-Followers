//
//  GFError.swift
//  GitHub Followers
//
//  Created by Tomasz Oskroba on 4/14/21.
//

import Foundation

enum GFError: String, Error {
    
    case invalidUsername = "This username created invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data received from the server was invalid. Please try again."
    case unableToFavorite = "There was an error favoriting this user. Please try again."
    case alreadyInFavorites = "You've already favorited this user. You must really like them!"
}
