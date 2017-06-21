//
//  ItemStore.swift
//  Homepwner
//
//  Created by Kevin Tran on 6/19/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ItemStore {
   
    var allItems = [Item]()
    
    @discardableResult func createItem() -> Item {
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        return newItem
    }//end of createItem method
    
    func removeItem (_ item: Item) {
        if let index = allItems.index(of: item) {
            allItems.remove(at: index)
        }
    }//end of removeItem
    
    func moveItem(from fromIndex: Int, to toIndex: Int) {
        if fromIndex == toIndex {
            return
        }
        
        //get reference if item being moved
        let movedItem = allItems[fromIndex]
        
        //then remove item from the array
        allItems.remove(at: fromIndex)
        
        //insert item in array at new location
        allItems.insert(movedItem, at: toIndex)
        
    }//end of moveItem method
    
    
    
}//end of ItemStore class
