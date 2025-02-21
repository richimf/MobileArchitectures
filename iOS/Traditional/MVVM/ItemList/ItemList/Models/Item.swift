//
//  Item.swift
//  ItemList
//
//  Created by Ricardo Montesinos on 21/02/25.
//

import Foundation

// Codable allows the model to be directly parsed from JSON.
struct Item: Codable {
    let id: Int
    let title: String
    let description: String
    
    // Custom CodingKeys to map API fields to model
    // CodingKeys maps the API’s body field to our description property.
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case description = "body" // Map 'body' from API to 'description'
    }
}
