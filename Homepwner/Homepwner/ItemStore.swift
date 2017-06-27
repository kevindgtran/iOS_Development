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
    
    //create URL so ItemStore can reach sandbox with archived data
    let itemArchiveURL: URL = {
        let documentsDirectories = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentDirectory = documentsDirectories.first!
        return documentDirectory.appendingPathComponent("items.archive")
    }()
    
    @discardableResult func createItem() -> Item {
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        return newItem
    }//end of createItem method
    
    //load item objects using NSKeyedUnarchiver
    init() {
        if let archivedItems = NSKeyedUnarchiver.unarchiveObject(withFile: itemArchiveURL.path) as? [Item] {
            allItems = archivedItems
        }
    }
    
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
    
    //save changes to NSKeyedArchiver
    func saveChanges() -> Bool {
        print("Saved items to: \(itemArchiveURL.path)")
        return NSKeyedArchiver.archiveRootObject(allItems, toFile: itemArchiveURL.path)
    }//end of saveChanges
    
    
    
    
    
}//end of ItemStore class
