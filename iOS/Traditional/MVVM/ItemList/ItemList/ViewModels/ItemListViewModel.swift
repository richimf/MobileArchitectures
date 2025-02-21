
//
//  ItemListViewModel.swift.swift
//  ItemList
//
//  Created by Ricardo Montesinos on 21/02/25.
//
import Foundation

//
// ======= Handles logic for the list ======
//
class ItemListViewModel {
    
    private(set) var items: [Item] = []
    
    var onItemsUpdated: (() -> Void)?
    var onError: ((String) -> Void)?
    
    init() {
        fetchItems()
    }
    
    func fetchItems() {
        APIManager.shared.fetchItems { [weak self] result in
            switch result {
            case .success(let fetchedItems):
                self?.items = fetchedItems
                self?.onItemsUpdated?()
            case .failure(let error):
                self?.onError?(error.localizedDescription)
            }
        }
    }
    
    func getItem(at index: Int) -> Item {
        return items[index]
    }
    
    func numberOfItems() -> Int {
        return items.count
    }
}
