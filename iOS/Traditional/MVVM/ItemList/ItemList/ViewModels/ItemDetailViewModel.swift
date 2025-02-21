//
//  ItemDetailViewModel.swift
//  ItemList
//
//  Created by Ricardo Montesinos on 21/02/25.
//

import Foundation

class ItemDetailViewModel {
    
    private let item: Item
    
    var title: String {
        return item.title
    }
    
    var description: String {
        return item.description
    }
    
    init(item: Item) {
        self.item = item
    }
}
