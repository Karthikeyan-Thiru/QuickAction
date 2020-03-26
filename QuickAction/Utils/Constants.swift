//
//  Constants.swift
//  QuickAction
//
//  Created by Karthikeyan T on 26/03/2020.
//  Copyright © 2020 Karthikeyan T. All rights reserved.
//

import Foundation

enum ApplicationShortcutItemTitle:String {
    case search     = "Search Products"
    case savedItems = "Saved Items"
    case cart       = "Go To Cart"
}

enum ApplicationShortcutItemSubTitle:String {
    case search     = "by name"
}

enum ApplicationShortcutItemType:String {
    case search     = "QuickAction.Search"
    case savedItems = "QuickAction.SavedItems"
    case cart       = "QuickAction.Cart"
}
