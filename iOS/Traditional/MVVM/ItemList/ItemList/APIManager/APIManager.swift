//
//  APIManager.swift
//  ItemList
//
//  Created by Ricardo Montesinos on 21/02/25.
//

import Foundation

class APIManager {
    static let shared = APIManager()
    
    private init() {}
    
    func fetchItems(completion: @escaping (Result<[Item], Error>) -> Void) {
        guard let url = URL(string: "https://your-valid-url.com/api") else {
            completion(.failure(NSError(domain: "Invalid URL", code: 400)))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NSError(domain: "No Data", code: 404)))
                return
            }
            
            do {
                let items = try JSONDecoder().decode([Item].self, from: data)
                completion(.success(items))
            } catch {
                completion(.failure(error))
            }
        }
        
        task.resume()
    }
}
