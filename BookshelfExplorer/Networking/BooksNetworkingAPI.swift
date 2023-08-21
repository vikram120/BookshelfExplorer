//
//  BooksNetworkingAPI.swift
//  BookshelfExplorer
//
//  Created by Vikram Kunwar on 21/08/23.
//



import Foundation

class NetworkingManager {
    func fetchBooks(completion: @escaping (Result<[Book], NetworkError>) -> Void) {
        guard let url = URL(string: "https://www.googleapis.com/books/v1/volumes?q=swift") else {
            completion(.failure(.invalidURL))
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(.other(error)))
                return
            }
            
            guard let data = data else {
                completion(.failure(.noData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let searchResult = try decoder.decode(SearchResult.self, from: data)
                completion(.success(searchResult.items))
            } catch let error {
                print("Decoding error: \(error)")
                completion(.failure(.decodingFailed))
            }
        }.resume()
    }
}


