//
//  ToDoListClass.swift
//  ToDoList
//
//  Created by Kevin Tran on 3/2/17.
//  Copyright © 2017 Kevin Tran. All rights reserved.
//

import Foundation
import UIKit

//create class "blueprint" for each todo list item
class ToDoItem {
    var title: String
    var checklistDetails: [String]
    
    
    //initialize function
    init(name: String, list: [String]) {
        self.title = name
        self.checklistDetails = list
    }
}
