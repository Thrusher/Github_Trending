//
//  Webservice.swift
//  Github_Trending
//
//  Created by Patryk Drozd on 20/09/2020.
//

import Foundation
import SwiftUI

class Webservice {
    func fetchTrendingRepositories(url: URL, completion: @escaping ([Repository]?) -> ()) {
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            do {
                let response = try JSONDecoder().decode([Repository].self, from: data)
                DispatchQueue.main.async {
                    completion(response)
                }
            } catch {
                print("error  \(error)")
                completion(nil)
            }
            
        }.resume()
    }
}
