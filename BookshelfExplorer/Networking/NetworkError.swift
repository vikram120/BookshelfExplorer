//
//  NetworkError.swift
//  BookshelfExplorer
//
//  Created by Vikram Kunwar on 21/08/23.
//

import Foundation
enum NetworkError: Error {
    case invalidURL
    case noData
    case decodingFailed
    case other(Error)
    
    var localizedDescription: String {
        switch self {
        case .invalidURL:
            return "Invalid URL"
        case .noData:
            return "No data received from the server"
        case .decodingFailed:
            return "Decoding of data failed"
        case .other(let error):
            return error.localizedDescription
        }
    }
}

