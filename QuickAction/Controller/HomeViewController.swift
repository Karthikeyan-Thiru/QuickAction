//
//  HomeViewController.swift
//  QuickAction
//
//  Created by Karthikeyan T on 26/03/2020.
//  Copyright © 2020 Karthikeyan T. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Uncomment the following, if want to check static Quick Action
        QuickActionHandler.shared.configDynamicQuickActions()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        guard
            let appDelegate  = UIApplication.shared.delegate as? AppDelegate,
            let shortcutItem = appDelegate.launchedShortcutItem
            else {return}
        
        QuickActionHandler.shared.handleQuickAction(shortcutItem)
    }
}

