//
//  Carrot.swift
//  carrot_practice
//
//  Created by 이준후 on 2023/05/19.
//

import Foundation

struct Carrot: Codable {
    let createdTime: String
    let post: Post
    let author: Author
    let product: Product
    let isBooked, isPriceOfferAvailable: Bool
}

// MARK: - Author
struct Author: Codable {
    let location: String
    let profileImageURL: String
    let nickname: String
    let mannerTemperature: Double
}

// MARK: - Post
struct Post: Codable {
    let title, content: String
    let reaction: Reaction
}

// MARK: - Reaction
struct Reaction: Codable {
    let commentsCount, heartsCount: Int
}

// MARK: - Product
struct Product: Codable {
    let price: Int
    let category: String
    let imageURLs: [String]
}
