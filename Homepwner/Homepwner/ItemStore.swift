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

    
    init() {
        for _ in 0..<5 {
            createItem()
        }
    }//end of create initializer
    
    
    
}//end of ItemStore class
