//
//  NetworkManager.swift
//  GitHub Followers
//
//  Created by Tomasz Oskroba on 4/5/21.
//

import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()
    let baseURL = "https://api.github.com/users/"
    let pageVariable = 100
    
    private init() {}
    
    func getFollowers(for username: String, page: Int, completionHandler: @escaping ([Follower]?, ErrorMessage?) -> Void) {
        let endpoint = baseURL + "\(username)/followers?per_page=\(pageVariable)&page=\(page)"
        
        guard let url = URL(string: endpoint) else {
            completionHandler(nil, .invalidUsername)
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let _ = error {
                completionHandler(nil, .unableToComplete)
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completionHandler(nil, .invalidResponse)
                return
            }
            
            guard let data = data else {
                completionHandler(nil, .invalidData)
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completionHandler(followers, nil)
            } catch {
                completionHandler(nil, .invalidData)
            }
        }
        
        task.resume()
    }
    
}
