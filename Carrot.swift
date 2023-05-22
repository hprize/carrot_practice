//
//  Carrot.swift
//  carrot_practice
//
//  Created by 이준후 on 2023/05/19.
//

import Foundation

struct Carrot: Codable, Identifiable {
    var id: UUID { UUID() }
    let createdTime: String
    let post: Post
    let author: Author
    let product: Product
    let isBooked, isPriceOfferAvailable: Bool
    
    static let dummies = [Carrot(createdTime: "", post: Post(title: "", content: "", reaction: Reaction(commentsCount: 0, heartsCount: 0)), author: Author(location: "", profileImageURL: URL(string: "www.naver.com")!, nickname: "", mannerTemperature: 0.0), product: Product(price: 0, category: "", imageURLs: [URL(string: "www.naver.com")! ]), isBooked: false, isPriceOfferAvailable: false)]
}

// MARK: - Author
struct Author: Codable {
    let location: String
    let profileImageURL: URL
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
    let imageURLs: [URL]
}
