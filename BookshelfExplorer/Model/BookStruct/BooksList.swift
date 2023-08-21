//
//  BooksList.swift
//  BookshelfExplorer
//
//  Created by Vikram Kunwar on 21/08/23.
//

import Foundation

struct Book: Decodable {
    let id: String
    let volumeInfo: VolumeInfo
}

struct VolumeInfo: Decodable {
    let title: String
    let authors: [String]
    let publisher: String?
    let description: String?
   
}

struct SearchResult: Decodable {
    let items: [Book]
}

