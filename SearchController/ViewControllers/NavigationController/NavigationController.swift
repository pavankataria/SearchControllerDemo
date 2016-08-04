//
//  NavigationController.swift
//  NonReactiveMVVM
//
//  Created by Ian Keen on 23/04/2016.
//  Copyright © 2016 Mustard. All rights reserved.
//

import UIKit


class NavigationController: UINavigationController {

    //MARK: - Private

    //MARK: - Lifecycle
    required convenience init() {
        self.init(navigationBarClass: nil, toolbarClass: nil)
        self.setNavigationBarHidden(true, animated: false)
    }
}
