//
//  QuickActionHandler.swift
//  ContextMenuDemo
//
//  Created by Karthikeyan T on 26/03/2020.
//  Copyright © 2020 Karthikeyan T. All rights reserved.
//

import UIKit

class QuickActionHandler {
    
    //MARK: - Shared Instance
    static let shared = QuickActionHandler()
    private init() { }
    
    //MARK: - Config/Add
    func configDynamicQuickActions() {
        QuickActionHandler.shared.clearQuickActions()
        addSearchQuickAction()
        addSavedItemsAction()
        addCartQuickAction()
    }
            
    func addSearchQuickAction() {
        removeSearchQuickAction()
        let searchItem = UIApplicationShortcutItem(type: ApplicationShortcutItemType.search.rawValue,
                                                   localizedTitle: ApplicationShortcutItemTitle.search.rawValue,
                                                   localizedSubtitle: ApplicationShortcutItemSubTitle.search.rawValue,
                                                   icon: UIApplicationShortcutIcon(type: .update),
                                                   userInfo: nil)
        var shortcutItems = UIApplication.shared.shortcutItems ?? []
        shortcutItems.append(searchItem)
        UIApplication.shared.shortcutItems = shortcutItems
    }
    
    func addSavedItemsAction() {
        removeSavedItemsQuickAction()
        let downloadItem = UIApplicationShortcutItem(type: ApplicationShortcutItemType.savedItems.rawValue,
                                                                               localizedTitle: ApplicationShortcutItemTitle.savedItems.rawValue,
                                                                               localizedSubtitle: "",
                                                                               icon: UIApplicationShortcutIcon(templateImageName: "SavedItems"),
                                                                               userInfo: nil)
        var shortcutItems = UIApplication.shared.shortcutItems ?? []
        shortcutItems.append(downloadItem)
        UIApplication.shared.shortcutItems = shortcutItems
    }
    
    func addCartQuickAction() {
        removeCartQuickAction()
        let downloadItem = UIApplicationShortcutItem(type: ApplicationShortcutItemType.cart.rawValue,
                                                                               localizedTitle: ApplicationShortcutItemTitle.cart.rawValue,
                                                                               localizedSubtitle: "",
                                                                               icon: UIApplicationShortcutIcon(templateImageName: "cart.png"),
                                                                               userInfo: nil)
        var shortcutItems = UIApplication.shared.shortcutItems ?? []
        shortcutItems.append(downloadItem)
        UIApplication.shared.shortcutItems = shortcutItems
    }
    
    
    
    //MARK: - Remove/ClearAll
    
    func removeSearchQuickAction() {
        var shortcutItems = UIApplication.shared.shortcutItems ?? []
        for (index, item) in shortcutItems.enumerated() {
            if item.type == ApplicationShortcutItemType.search.rawValue {
                shortcutItems.remove(at: index)
            }
        }
        UIApplication.shared.shortcutItems = shortcutItems
    }
    
    func removeSavedItemsQuickAction() {
        var shortcutItems = UIApplication.shared.shortcutItems ?? []
        for (index, item) in shortcutItems.enumerated() {
            if item.type == ApplicationShortcutItemType.savedItems.rawValue {
                shortcutItems.remove(at: index)
            }
        }
        UIApplication.shared.shortcutItems = shortcutItems
    }
    
    func removeCartQuickAction() {
        var shortcutItems = UIApplication.shared.shortcutItems ?? []
        for (index, item) in shortcutItems.enumerated() {
            if item.type == ApplicationShortcutItemType.cart.rawValue {
                shortcutItems.remove(at: index)
            }
        }
        UIApplication.shared.shortcutItems = shortcutItems
    }
    
    func clearQuickActions() {
        UIApplication.shared.shortcutItems = []
    }
    
    //MARK: - Handle the Action
    func handleQuickAction(_ shortcutItem:UIApplicationShortcutItem) {
        guard let actionType = ApplicationShortcutItemType(rawValue: shortcutItem.type) else { return }
        
        switch actionType {
        case .search:
            print("Handle search action")
        case .savedItems:
            print("Handle Saved Items action")
        case .cart:
            print("Handle Cart action")
        }
    }
}
