//
//  WebService.swift
//  Kofi
//
//  Created by Giertl Matus on 30.03.2021.
//

import Foundation

class WebService {
    let apiURL = "https://kofee.glitch.me"
    
    func getAllOrders(completion: @escaping ([Order]?) -> ()) {
        // create the URL
        guard let url = URL(string: "\(apiURL)/orders") else {
            completion(nil)
            return
        }
        
        // Call the URL
        URLSession.shared.dataTask(with: url) { (data, res, error) in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            let orders = try? JSONDecoder().decode([Order].self, from: data)
            
            // Completion will be handled on the main thread, hence the need of the dispatch queue
            DispatchQueue.main.async {
                completion(orders)
            }
        }.resume()
    }
}
